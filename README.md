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

```
