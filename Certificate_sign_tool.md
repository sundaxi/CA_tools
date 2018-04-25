
=================

      * [Introduction](#introduction)
      * [Pull the tools](#pull-the-tools)
      * [Usage](#usage)



## Introduction 

It's a simple shell script which used to generate self-sign certificate 

## Pull the tools

```
```

## Usage 

check the help command line

```
        -h|--help : usage for help page
        -p|--private: usage to generate a private key
        -v|--verify: usage to verify a private key
        -t|--trans: usage to trans a private key with pass to no pass
```

Here comes the sample and you can modify the configuration file based on your requirement 

```
############ configuration for the server side###########
## define private Key password
## define the valid days
DAYS=3650
## define the DN info
HS_S=yinsun.microsoft.com
## define the Private Key Path

## define the DN info########
```


Generate private key

```
```

Verify the private key 

```
Private-Key: (2048 bit)
modulus:
    00:d5:d5:a4:6d:85:2c:11:22:e3:c8:43:64:c4:10:
    ce:9e:bb:69:9d:f9:3d:10:af:ef:ad:ce:31:49:f6:
    8f:73:93:27:06:e8:f0:3c:cc:bf:28:57:93:95:87:
    dd:e5:80:40:00:e1:d5:2d:b1:4f:18:bc:e2:05:c0:
    e9:8f:8f:03:a5:8c:a5:54:cf:a0:d1:55:65:98:a6:
    e2:b7:b3:ca:04:48:7d:ad:e7:c3:69:22:9a:8d:8a:
    a6:4e:b1:1f:43:2b:da:f5:bf:73:15:b3:e9:db:f8:
    cf:ff:05:60:88:6a:34:4a:7b:31:34:52:2e:0e:45:
    09:2f:1e:ad:27:e6:17:c3:11:19:24:62:f5:49:38:
    2e:b0:43:f9:9b:43:03:e8:29:8b:64:f2:fb:9b:2d:
    14:5d:4d:93:76:55:7a:3b:0c:7a:93:3b:96:26:93:
    2d:ea:19:cb:e3:b5:64:33:61:37:74:17:4f:4b:20:
    c8:dc:58:e8:3a:8a:51:bf:46:af:0f:48:58:fc:56:
    d3:03:68:70:19:1e:b1:8e:a2:8d:34:93:20:d7:93:
    10:6a:48:0b:fb:71:84:19:18:dc:ca:4c:71:11:1b:
    fd:75:7d:9a:5a:26:f2:3e:e0:cf:7f:1a:b5:c5:19:
    be:a7:fd:18:fb:5a:bc:7a:9b:0e:c5:34:6b:37:b6:
    fc:ed
publicExponent: 65537 (0x10001)
privateExponent:
    01:c3:0c:e3:ca:21:1e:d3:06:c5:73:a8:b4:e4:de:
    8e:f8:44:5a:84:df:37:ef:fb:2d:97:71:58:86:ab:
    8f:ec:3a:7a:18:19:42:a6:fd:3c:3b:dc:7f:72:eb:
    25:24:f5:62:0c:7a:51:32:10:d0:c7:5d:a5:66:7d:
    86:2d:4b:7e:65:b6:47:08:9e:ee:9a:a1:87:ac:78:
    59:c3:25:7a:fb:8d:ed:8c:e7:53:4a:71:b3:90:dc:
    e5:f1:17:ac:da:03:a7:da:b7:fc:09:cb:77:80:89:
    56:34:99:23:06:9c:ff:b0:1c:2b:ae:31:aa:f4:6e:
    aa:f0:b9:c4:86:64:d3:ba:a0:7a:fe:5c:34:40:49:
    88:33:6b:fe:e1:01:d7:c9:d6:9c:a4:ab:b6:9c:ca:
    91:07:83:0e:98:32:09:26:42:8e:60:8a:40:02:1c:
    ff:5f:87:b4:f5:98:79:a7:9d:68:49:e0:f5:18:bb:
    56:8d:85:37:df:ad:a9:77:a1:7b:52:e7:8c:5d:ab:
    8b:2a:35:92:78:56:0c:81:81:37:02:74:54:56:fe:
    ae:93:fe:1b:f5:76:87:0e:81:22:ae:85:19:37:dd:
    22:aa:41:05:23:d0:01:72:9a:06:2e:3d:2c:df:b5:
    d6:cf:4b:a4:86:37:4c:94:a1:a9:6e:ec:07:57:4f:
    11
prime1:
    00:f0:55:c3:92:eb:52:21:ed:84:fd:7e:ef:0e:72:
    e4:7b:b1:44:ba:7b:b9:bc:8c:e3:87:b8:54:96:77:
    7a:2a:7b:ae:8a:bb:22:d4:63:a2:3f:5e:20:50:e0:
    11:1e:26:91:44:ba:54:bf:cb:77:4c:3c:f0:e1:ce:
    7f:c0:68:c1:3f:4d:64:0f:f4:1c:2e:77:1e:b9:8d:
    31:e4:81:2f:bf:2f:7a:d2:21:6f:9e:1a:9d:71:4d:
    3b:b2:99:91:53:19:fc:c1:45:af:5d:a2:fa:8c:f7:
    2e:17:94:c5:86:0d:76:24:ba:17:15:4b:50:3b:0b:
    d9:91:0b:ff:01:dd:a7:3e:2f
prime2:
    00:e3:c5:b0:d4:cd:8c:14:1d:50:e8:0e:94:17:36:
    d7:d5:a2:f4:3f:90:fd:36:b6:c6:ec:67:20:d3:f4:
    bc:2b:c2:a5:66:2e:95:cc:7e:a1:b4:1c:ab:26:a4:
    cf:98:66:83:8d:e5:54:5c:d7:95:dd:b3:37:ff:84:
    13:48:45:a2:2e:e3:77:8b:ab:dc:06:86:8c:0c:77:
    38:d9:c2:b7:21:c1:11:1f:32:b7:dd:c8:61:1d:ed:
    82:0d:2e:ff:7c:e7:7e:d4:96:7e:bd:f3:75:ce:e0:
    0f:e3:28:c9:2a:72:f3:db:1a:df:29:b2:f3:d5:70:
    af:5c:81:f0:73:a8:1f:ab:a3
exponent1:
    4e:21:f3:b4:fd:df:f3:bb:be:32:93:63:b0:74:d5:
    a7:08:d8:69:2f:f4:10:42:55:6e:38:14:f7:dd:db:
    cf:97:ea:04:9c:16:14:aa:57:82:f6:5c:d7:2e:21:
    22:86:33:4f:fe:ab:b2:b6:b9:10:05:f7:e1:d1:3a:
    63:19:2b:4a:23:24:d6:b2:eb:be:87:67:6b:b7:65:
    72:fe:34:c1:98:f3:fb:00:77:c3:14:af:fe:b7:b7:
    22:b7:1e:31:c0:0f:15:de:4b:c6:cb:47:5d:30:b6:
    c1:5f:d2:5f:64:5c:f6:4f:b1:55:70:e8:a2:69:95:
    cf:bb:f0:a9:70:a0:00:6d
exponent2:
    4d:19:96:09:f2:aa:00:05:0c:66:00:c9:50:32:58:
    4d:10:a3:ed:00:7f:36:0e:18:b7:dd:10:d7:ae:78:
    23:b7:f7:94:e7:1f:fd:e0:bf:8b:e0:48:6f:04:4a:
    e1:23:92:54:6d:d4:68:b8:f1:19:e2:98:89:fd:83:
    29:6b:a8:c2:86:6c:e8:f2:7b:c0:19:bb:3e:5c:fc:
    f9:79:57:d4:2d:2e:46:89:3c:83:ee:58:31:71:3c:
    1c:8a:54:21:4b:9b:3b:0a:d6:4c:26:25:32:a9:d5:
    b6:e7:0f:71:37:08:24:9a:ab:ff:c9:7b:90:3c:5c:
    9f:cb:bc:40:ea:20:0e:51
coefficient:
    64:95:e3:dd:56:d3:bf:77:54:c0:1a:ef:94:2f:40:
    6d:af:6f:09:a8:b8:c2:ee:57:d0:5a:ff:a2:31:76:
    cb:d4:6d:fc:8d:06:17:5d:9b:80:a5:62:c9:38:8d:
    5e:ed:53:35:2d:5d:4f:49:b0:6f:9b:be:0a:ba:2d:
    9a:60:c6:d0:74:36:0a:2c:08:da:16:6c:b7:4a:98:
    ff:cf:6d:51:2e:a9:dc:8b:74:bc:6b:e0:3f:8f:ba:
    53:f8:23:4f:3f:13:70:50:25:2a:f5:eb:74:01:cc:
    b7:56:06:07:f7:07:0c:13:3d:8f:8d:24:5f:a7:af:
    85:25:e9:c5:76:d2:52:36
```


```
```


```
    Data:
        Version: 3 (0x2)
        Serial Number:
            c6:6a:eb:c2:24:6b:c6:47
    Signature Algorithm: sha256WithRSAEncryption
microsoft.com
        Validity
.microsoft.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:d5:d5:a4:6d:85:2c:11:22:e3:c8:43:64:c4:10:
                    ce:9e:bb:69:9d:f9:3d:10:af:ef:ad:ce:31:49:f6:
                    8f:73:93:27:06:e8:f0:3c:cc:bf:28:57:93:95:87:
                    dd:e5:80:40:00:e1:d5:2d:b1:4f:18:bc:e2:05:c0:
                    e9:8f:8f:03:a5:8c:a5:54:cf:a0:d1:55:65:98:a6:
                    e2:b7:b3:ca:04:48:7d:ad:e7:c3:69:22:9a:8d:8a:
                    a6:4e:b1:1f:43:2b:da:f5:bf:73:15:b3:e9:db:f8:
                    cf:ff:05:60:88:6a:34:4a:7b:31:34:52:2e:0e:45:
                    09:2f:1e:ad:27:e6:17:c3:11:19:24:62:f5:49:38:
                    2e:b0:43:f9:9b:43:03:e8:29:8b:64:f2:fb:9b:2d:
                    14:5d:4d:93:76:55:7a:3b:0c:7a:93:3b:96:26:93:
                    2d:ea:19:cb:e3:b5:64:33:61:37:74:17:4f:4b:20:
                    c8:dc:58:e8:3a:8a:51:bf:46:af:0f:48:58:fc:56:
                    d3:03:68:70:19:1e:b1:8e:a2:8d:34:93:20:d7:93:
                    10:6a:48:0b:fb:71:84:19:18:dc:ca:4c:71:11:1b:
                    fd:75:7d:9a:5a:26:f2:3e:e0:cf:7f:1a:b5:c5:19:
                    be:a7:fd:18:fb:5a:bc:7a:9b:0e:c5:34:6b:37:b6:
                    fc:ed
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Subject Key Identifier:
            X509v3 Authority Key Identifier:
0A:56
    Signature Algorithm: sha256WithRSAEncryption
         3d:6e:c8:7f:49:f1:57:96:8c:20:5c:07:29:39:95:2f:3f:a4:
         19:18:0c:02:14:ce:b4:e2:a8:fa:5c:ae:b7:ea:02:a5:79:b5:
         a1:41:25:c3:7f:80:29:81:e7:94:cb:b8:1a:26:54:31:e8:21:
         a7:dd:01:d3:83:00:b7:98:6f:59:60:3d:be:6a:98:71:11:95:
         0b:ea:ab:06:7c:af:ea:73:f8:6d:1d:0b:f0:02:c7:bc:7c:0d:
         75:ad:a5:93:a0:1f:54:60:45:54:92:69:f5:e6:d9:36:9d:a8:
         10:ae:54:d5:78:57:e1:f0:c2:9e:7e:9f:32:ae:61:49:ec:8d:
         f4:de:60:41:a3:66:2c:84:d1:be:86:a1:32:06:d8:e1:c8:4b:
         62:81:f7:55:18:75:8e:2d:4f:dc:18:a8:c7:61:1c:bc:cd:7a:
         bc:c9:cc:1d:7a:40:a4:79:00:54:c0:90:e7:1b:7e:cc:8f:14:
         bb:fb:b7:b3:c9:29:eb:c3:db:3d:01:b3:08:d5:1d:42:54:2f:
         24:01:de:10:d7:08:22:fb:f7:e6:7e:16:81:08:25:fd:c0:f0:
         75:f5:f2:86:e5:95:e1:5f:95:af:1f:5a:5c:81:75:e6:25:43:
         a8:5f:66:a1:1f:00:ce:4f:b9:b6:a8:1b:46:ea:cc:80:55:2a:
         fc:36:d4:05
```


```
```


```
    Data:
        Version: 0 (0x0)
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:d5:d5:a4:6d:85:2c:11:22:e3:c8:43:64:c4:10:
                    ce:9e:bb:69:9d:f9:3d:10:af:ef:ad:ce:31:49:f6:
                    8f:73:93:27:06:e8:f0:3c:cc:bf:28:57:93:95:87:
                    dd:e5:80:40:00:e1:d5:2d:b1:4f:18:bc:e2:05:c0:
                    e9:8f:8f:03:a5:8c:a5:54:cf:a0:d1:55:65:98:a6:
                    e2:b7:b3:ca:04:48:7d:ad:e7:c3:69:22:9a:8d:8a:
                    a6:4e:b1:1f:43:2b:da:f5:bf:73:15:b3:e9:db:f8:
                    cf:ff:05:60:88:6a:34:4a:7b:31:34:52:2e:0e:45:
                    09:2f:1e:ad:27:e6:17:c3:11:19:24:62:f5:49:38:
                    2e:b0:43:f9:9b:43:03:e8:29:8b:64:f2:fb:9b:2d:
                    14:5d:4d:93:76:55:7a:3b:0c:7a:93:3b:96:26:93:
                    2d:ea:19:cb:e3:b5:64:33:61:37:74:17:4f:4b:20:
                    c8:dc:58:e8:3a:8a:51:bf:46:af:0f:48:58:fc:56:
                    d3:03:68:70:19:1e:b1:8e:a2:8d:34:93:20:d7:93:
                    10:6a:48:0b:fb:71:84:19:18:dc:ca:4c:71:11:1b:
                    fd:75:7d:9a:5a:26:f2:3e:e0:cf:7f:1a:b5:c5:19:
                    be:a7:fd:18:fb:5a:bc:7a:9b:0e:c5:34:6b:37:b6:
                    fc:ed
                Exponent: 65537 (0x10001)
        Attributes:
            a0:00
    Signature Algorithm: sha256WithRSAEncryption
         64:b5:39:f3:18:63:e2:2e:ab:ff:9c:6f:c4:c8:50:5d:63:c2:
         cf:4c:ce:2f:fa:af:00:4b:37:42:96:70:37:4c:6d:f6:23:0a:
         62:1c:43:02:5f:5e:2f:37:d7:98:82:f7:a3:51:f8:59:50:4f:
         ce:68:8b:4b:6c:00:4a:cc:7a:9b:8d:09:0f:04:80:b3:b0:e6:
         0b:d6:bb:f6:5e:a6:00:06:02:17:b8:ca:2a:59:49:7e:5f:53:
         67:5b:10:d2:29:79:38:0c:d8:96:15:5f:a6:57:87:d2:30:48:
         dc:a1:74:d0:a7:a7:89:02:ff:bb:24:90:14:fa:c2:c3:8c:02:
         70:95:9f:f5:a1:e4:44:f1:a7:0c:0c:e8:96:e6:a1:27:95:45:
         b9:25:62:27:f0:a8:c2:3e:68:70:48:30:2b:fb:3d:ed:a4:8f:
         49:36:ef:68:6d:0c:f6:5b:6b:3a:f9:46:dc:0f:20:9a:b2:88:
         63:b1:c2:6d:f0:a2:ab:ec:0f:08:cb:8c:b0:f0:dd:34:0c:49:
         41:29:a5:dd:87:82:a3:b8:fb:1a:21:e4:5f:7c:e8:35:e6:30:
         4f:b5:8e:5f:e7:c9:9a:27:4e:3e:9b:0b:e8:bf:14:51:03:cb:
         f3:67:a4:a2:04:65:95:b7:7e:ee:af:40:96:45:67:c3:22:82:
         f0:6c:e2:c6
```


```
```

check the certificate 

```
    Data:
        Version: 1 (0x0)
        Serial Number:
            a9:f0:40:8a:7a:a3:cf:89
    Signature Algorithm: sha256WithRSAEncryption
microsoft.com
        Validity
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:d5:d5:a4:6d:85:2c:11:22:e3:c8:43:64:c4:10:
                    ce:9e:bb:69:9d:f9:3d:10:af:ef:ad:ce:31:49:f6:
                    8f:73:93:27:06:e8:f0:3c:cc:bf:28:57:93:95:87:
                    dd:e5:80:40:00:e1:d5:2d:b1:4f:18:bc:e2:05:c0:
                    e9:8f:8f:03:a5:8c:a5:54:cf:a0:d1:55:65:98:a6:
                    e2:b7:b3:ca:04:48:7d:ad:e7:c3:69:22:9a:8d:8a:
                    a6:4e:b1:1f:43:2b:da:f5:bf:73:15:b3:e9:db:f8:
                    cf:ff:05:60:88:6a:34:4a:7b:31:34:52:2e:0e:45:
                    09:2f:1e:ad:27:e6:17:c3:11:19:24:62:f5:49:38:
                    2e:b0:43:f9:9b:43:03:e8:29:8b:64:f2:fb:9b:2d:
                    14:5d:4d:93:76:55:7a:3b:0c:7a:93:3b:96:26:93:
                    2d:ea:19:cb:e3:b5:64:33:61:37:74:17:4f:4b:20:
                    c8:dc:58:e8:3a:8a:51:bf:46:af:0f:48:58:fc:56:
                    d3:03:68:70:19:1e:b1:8e:a2:8d:34:93:20:d7:93:
                    10:6a:48:0b:fb:71:84:19:18:dc:ca:4c:71:11:1b:
                    fd:75:7d:9a:5a:26:f2:3e:e0:cf:7f:1a:b5:c5:19:
                    be:a7:fd:18:fb:5a:bc:7a:9b:0e:c5:34:6b:37:b6:
                    fc:ed
                Exponent: 65537 (0x10001)
    Signature Algorithm: sha256WithRSAEncryption
         9c:9e:f2:a0:77:4d:c1:f5:e1:0b:41:c7:64:ef:3e:01:54:34:
         11:a0:d8:90:7e:d2:b8:55:9b:0f:e2:d6:09:02:02:49:3e:e3:
         84:09:3d:3b:2a:09:b0:d8:c2:05:50:ef:d1:e0:87:3b:67:fa:
         2c:b9:f3:0f:c7:26:06:3f:85:3c:40:56:22:9a:68:91:25:fa:
         19:cb:bd:c5:84:4d:1c:9f:4a:f7:97:ec:9a:93:ba:12:f5:f9:
         d8:2c:25:5c:4d:b1:6b:0d:55:30:15:67:93:28:fc:b7:90:bd:
         34:f3:3b:6f:67:31:a3:c2:f6:a9:f4:c6:a2:be:e5:d2:71:90:
         62:1a:2b:c4:69:b9:e7:da:76:dd:63:a7:27:d4:d1:1a:07:34:
         2f:47:36:07:cd:a2:7f:47:33:70:bf:f3:bf:d0:54:34:fe:35:
         a1:a9:3f:46:80:80:c8:90:6d:1b:51:5e:26:4c:86:87:1e:bc:
         d0:fc:fe:eb:79:e7:19:dd:c8:2c:bf:d2:05:40:a0:b6:7f:2a:
         b3:bb:42:9e:f7:89:60:d5:69:0a:a3:00:05:99:d4:66:5d:61:
         c3:4c:e3:30:a2:c9:c2:a9:bf:f4:28:66:ae:51:f2:c4:8d:7c:
         6d:4d:94:29:7e:13:61:b9:e7:9f:c0:68:33:bc:ff:69:8d:72:
         e7:53:11:80
```

