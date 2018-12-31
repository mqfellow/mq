# mq
Container with IBM MQ, jq, python 3.4 and awscli

* https://hub.docker.com/r/ibmcom/mq/dockerfile
* https://gist.github.com/navid-taheri


```

$ docker run -it mqfellow/mq:latest jq --version
jq version 1.3

$ docker run -it mqfellow/mq:latest aws --version
aws-cli/1.16.81 Python/3.4.3 Linux/4.9.93-linuxkit-aufs botocore/1.12.71

$ docker run -it mqfellow/mq:latest dspmqver
Name:        IBM MQ
Version:     9.0.0.0
Level:       p900-L160520.DE
BuildType:   IKAP - (Production)
Platform:    IBM MQ for Linux (x86-64 platform)
Mode:        64-bit
O/S:         Linux 4.9.93-linuxkit-aufs
InstName:    Installation1
InstDesc:    
Primary:     Yes
InstPath:    /opt/mqm
DataPath:    /var/mqm
MaxCmdLevel: 900
LicenseType: Developer

$ docker run -it mqfellow/mq:latest runmqakm -version
GSKCAPICMD
==========
@(#)CompanyName:      IBM Corporation
@(#)LegalTrademarks:  IBM
@(#)FileDescription:  IBM Global Security Toolkit
@(#)FileVersion:      8.0.50.65
@(#)InternalName:     gskcapicmd
@(#)LegalCopyright:   Licensed Materials - Property of IBM GSKit 
                      (C) Copyright IBM Corp.1995, 2016 
                      All Rights Reserved. US Government Users 
                      Restricted Rights - Use, duplication or disclosure
                      restricted by GSA ADP Schedule Contract with IBM Corp.
@(#)OriginalFilename: gsk8capicmd_64
@(#)ProductName:      gsk8j (GoldCoast Build) 160426
@(#)ProductVersion:   8.0.50.65
@(#)ProductInfo:      16/04/19.21:51:23.16/04/26.12:12:11
@(#)CMVCInfo:         gsk8j_160219/gsk8j_doc gsk8j_160226/gsk8j_ikm gsk8j_160422/gsk8j_cms gsk8j_160426/gsk8j_support gsk8j_160223/gsk8j_pkg gsk8j_160422/gsk8j_ssl gsk8j_160413/gsk8j_acme


```
