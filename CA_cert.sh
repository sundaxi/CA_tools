#!/bin/bash
#author Sun Ying
#update:2017-09-07
if [ $# -lt 1 ];then
	echo -e "\033[34mUsage: `basename $0` -h|--help for help\033[0m"
	exit 0
fi 
[ -e ./CA_config ] && source ./CA_config
ERRLOG=`date +%Y%H%M`.log
PASSWORD=${PASSWORD-"1234"}
CO_S=${CN_S-"CN"}
ST_S=${ST_S-"BJ"}
LO_S=${LO_S-"BJ"}
OG_S=${OG_S-"Centos"}
OU_S=${OU_S-"Linux"}
HS_S=${HS_S-"centos.example.com"}
CO_C=${CN_C-"CN"}
ST_C=${ST_C-"LN"}
LO_C=${LO_C-"SY"}
OG_C=${OG_C-"Client1"}
OU_C=${OU_C-"Operation System"}
HS_C=${HS_C-"client1.example.com"}
DAYS=${DAYS-"365"}
P_KEY=${P_KEY-/etc/pki/CA/private/cakey.pem}
CACERT=${CACERT-/etc/pki/CA/cacert.pem}
M_SIZE=${M_SIZE-"2048"}
CSR_pem=${CSR_pem-/etc/pki/CA/newcerts/${HOSTNAME}.csr}
S_DAYS=${S_DAYS-365}
DIR_F=/etc/pki/CA
umask=077
[ ! -d /tmp/CA ] && mkdir -p /tmp/CA/
touch /tmp/CA/$ERRLOG
V_Key(){
	if [ -f $temp ]; then
		openssl rsa -noout -text -in $temp
	else 
		echo -e "\033[32mYou must assign a private Key with parameter -v|--verify\033[0m"		
		exit 3
	fi
}
V_Cert(){
	if [ -f $temp ]; then
		openssl x509 -noout -text -in $temp
	else 
		echo -e "\033[32mYou must assign a cert file with parameter -k|--check\033[0m"		
		exit 3
	fi
}
V_Csr(){
	if [ -f $temp ]; then
		openssl req -noout -text -in $temp
	else 
		echo -e "\033[32mYou must assign a CSR file with parameter -i|--identify\033[0m"	
		exit 3
	fi
}
genPriKey(){
	[ -e $P_KEY ] && rm -f $P_KEY
        openssl genrsa -des3 -passout pass:$PASSWORD -out $P_KEY $M_SIZE >>/tmp/CA/$ERRLOG 2>&1
        if [ $? -eq 0 ];then
                echo -e "Create private key in $P_KEY \033[033msuccess\033[0m"
        else
                echo "please check the error log under /tmp/CA/$ERRLOG"
		exit 1
        fi
}
selfSign(){
        [ -e $CACERT ] && rm -f $CACERT
	if [ ! -e $P_KEY ] ;then
		echo "Please create the private key first"
		exit 1
	fi
	openssl req -new -x509 -passin pass:$PASSWORD -key $P_KEY -out $CACERT -days $DAYS -subj "/C=${CO_S}/ST=${ST_S}/L=${LO_S}/O=${OG_S}/OU=${OU_S} Department/CN=$HS_S" >>/tmp/CA/$ERRLOG 2>&1
        if [ $? -eq 0 ];then
                echo -e "Self Sign ROOT CA in $CACERT \033[033msuccess\033[0m"
        else
                echo "please check the error og under /tmp/CA/$ERRLOG"
		exit 2
	fi 
}
CSR_P(){
	[ -e $CSR_pem ] && rm -f $CSR_pem
	openssl req -new -passin pass:$PASSWORD -key $P_KEY -out $CSR_pem  -subj "/C=${CO_C}/ST=${ST_C}/L=${LO_C}/O=${OG_C}/OU=${OU_C} Department/CN=${HS_C}" >>/tmp/CA/$ERRLOG 2>&1
	if [ $? -eq 0 ];then
		echo -e "Create the CSR under $CSR_pem \033[033msuccess\033[0m"
	else 
		echo "please check the error log under /tmp/CA/$ERRLOG"
		exit 3
	fi
}
Cat_CA(){
	[ -e /root/ca.config ] && rm -f /root/ca.config
	cat > /root/ca.config <<EOF
[ ca ]
default_ca = CA_own
[ CA_own ]
dir = /etc/pki/CA
certs = \$dir/certs
new_certs_dir = \$dir/newcerts	
database = \$dir/index.txt
serial = \$dir/serial
RANDFILE = \$dir/private/.rand
certificate = \$dir/cacert.pem 
private_key = \$dir/private/cakey.pem
default_days = 3650
default_crl_days = 30
default_md = md5
preserve = no
policy = policy_anything
[ policy_anything ]
countryName = optional
stateOrProvinceName = optional
localityName = optional
organizationName = optional
organizationalUnitName = optional
commonName = supplied
emailAddress = optional
[req]
x509_extensions	=v3_ca
[v3_ca]
subjectKeyIdentifier = hash
authorityKeyIdentifier = keyid:always,issuer
basicConstraints = critical, CA:true
keyUsage = critical, digitalSignature, cRLSign, keyCertSign
EOF

	if [ $? -eq 0 ]; then
		echo -e "Create configuration file on /root/ca.config \033[033msuccess\033[0m"
	else 
		echo -e "Create configuration file on /root/ca.config \033[031failed\033[0m"
	fi
}
Sign_v3(){
	openssl req -in $temp -noout -text >> /tmp/CA/$ERRLOG 2>&1
	if [ $? -eq 0 ] ;then
		Cat_CA
		[ ! -f $DIR_F/index.txt ] && touch $DIR_F/index.txt
		if [ ! -f $DIR_F/serial ];then
			touch $DIR_F/serial
			echo 01 > $DIR_F/serial
		fi
		openssl ca -extensions v3_ca -preserveDN -passin pass:$PASSWORD -in $temp -config /root/ca.config -days $S_DAYS -out ${temp}_V3.crt  -batch  >>/tmp/CA/$ERRLOG 2>&1
		if [ $? -eq 0 ];then
			echo -e "Create the cert file on ${temp}_V3.crt \033[033msuccess\033[0m"
		else
			echo -e "Cannot Create the Cert file. Please check the error under /tmp/CA/$ERRLOG"
			exit 4
		fi
	else 
		echo -e "\033[32mYou must assign a CSR file with parameter -s3|--sign3\033[0m"
		exit 5
	fi
}
Trans_key(){
	openssl rsa -passin pass:$PASSWORD -noout -text -in $temp > /dev/null 2>/tmp/CA/$ERRLOG
	if [ $? -eq 0 ];then
		openssl rsa -passin pass:$PASSWORD -in $temp -out ${temp}.key
		echo -e "Create the ${temp}.key \033[033msuccess\033[0m"
	else 
		echo -e "\033[32mYou must assign a cert file with parameter -t|--trans\033[0m"
		exit 5
	fi
	
}
Sign_CSR(){
	openssl req -in $temp -noout -text >> /tmp/CA/$ERRLOG 2>&1
	if [ $? -eq 0 ]; then
                [ ! -f $DIR_F/index.txt ] && touch $DIR_F/index.txt
                if [ ! -f $DIR_F/serial ];then
                        touch $DIR_F/serial
                        echo 01 > $DIR_F/serial
                fi
		openssl x509 -req -in $temp -CA $CACERT -CAkey $P_KEY -CAcreateserial -passin pass:$PASSWORD -out $temp.crt >>/tmp/CA/$ERRLOG 2>&1
		if [ $? -eq 0 ];then
                        echo -e "Create the cert file on $temp.crt \033[033msucess\033[0m"
                else
                        echo -e "Cannot Create the Cert file. Please check the error under /tmp/CA/$ERRLOG"
                        exit 4
		fi
	else 
		echo -e "\033[32mYou must assign a CSR file with parameter -s|--sign\033[0m"
		exit 6
	fi

}
Revoke_cert (){
	if [ -f $temp ];then
		openssl ca -revoke $temp >>/tmp/CA/$ERRLOG 2>&1
		if [ $? -eq 0 ];then
			echo -e "Revoke the cert file $temp \033[033msucess\033[0m"
		else 
			echo -e "Cannot Revoke the cert file,please check the /tmp/CA/$ERRLOG"
			exit 4 
		fi
	else
		echo -e "\033[32mYou must assign a Cert file with parameter -e|--revoke\033[0m"
		exit 6
	fi
}

help_P(){
        echo -e "\033[34mUsage: `basename $0`\033[031m [option] [file]\033[0m"
        echo -e "	\033[32m-h|--help : usage for help page\033[0m"
        echo -e "	\033[32m-c|--ca: usage to sign self root CA certification\033[0m"
	echo -e "	\033[32m-p|--private: usage to generate a private key\033[0m"
	echo -e "	\033[32m-r|--request: usage to create a CSR request\033[0m"
	echo -e "	\033[32m-s|--sign: usage to sign a Certification\033[0m"
	echo -e "	\033[32m-s3|--sign3: usage to sign v3 Certification\033[0m"
	echo -e "	\033[32m-v|--verify: usage to verify a private key\033[0m"
	echo -e "	\033[32m-i|--identify: usage to verify a CSR file\033[0m"
	echo -e "	\033[32m-k|--check: usage to verify a Certication file\033[0m"
	echo -e "	\033[32m-t|--trans: usage to trans a private key with pass to no pass\033[0m"
	exit 0 
}
while [ $# -ge 1 ]; do
case $1 in
	-p|--private) 
			genPriKey
			shift
		;;
	-c|--ca)
			selfSign
			shift 
		;;
	-r|--request)
			CSR_P
			shift
		;;	
	-s3|--sign3)
			temp=$2
			Sign_v3
			rm /root/ca.config
			shift 2
		;;
	-s|--sign)
			temp=$2
			Sign_CSR
			shift 2
		;;
	-v|--verfiy)
			temp=$2
			V_Key
			shift 2
		;;		
	-i|--identify)
			temp=$2
			V_Csr
			shift 2
		;;
	-k|--check)
			temp=$2
			V_Cert	
			shift 2
		;;
	-e|--revoke)
			temp=$2
			Revoke_cert
			shift 2
		;;
	-h|--help)
			help_P
			shift
		;;
	-t|--trans)
			temp=$2
			Trans_key
			shift 2
		;;		
	*)
			echo -e "\033[34mUsage: `basename $0` -h|--help for help\033[0m"
			exit 0
		;;
esac
done

[ -e /tmp/CA/$ERRLOG ] && rm /tmp/CA/$ERRLOG
