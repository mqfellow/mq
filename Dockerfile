FROM ubuntu:14.04

MAINTAINER MQFellow <mqfellow@mqfellow.io>

# The URL to download the MQ installer from in tar.gz format
ARG MQ_URL=http://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqadv/mqadv_dev90_linux_x86-64.tar.gz

# The MQ packages to install
ARG MQ_PACKAGES="MQSeriesRuntime-*.rpm MQSeriesServer-*.rpm MQSeriesMsg*.rpm MQSeriesJava*.rpm MQSeriesJRE*.rpm MQSeriesGSKit*.rpm"

RUN export DEBIAN_FRONTEND=noninteractive \
# Optional: Update the command prompt
 && echo "mq:9.0" > /etc/debian_chroot \
# Install additional packages required by MQ, this install process and the runtime scripts
&& apt-get update -y \
&& apt-get install -y --no-install-recommends \
bash \
bc \
coreutils \
curl \
debianutils \
findutils \
gawk \
grep \
libc-bin \
mount \
passwd \
procps \
rpm \
sed \
tar \
util-linux \
# Download and extract the MQ installation files
&& mkdir -p /tmp/mq \
&& cd /tmp/mq \
&& curl -LO $MQ_URL \
&& tar -zxvf ./*.tar.gz \
# Recommended: Create the mqm user ID with a fixed UID and group, so that the file permissions work between different images
&& groupadd --gid 1000 mqm \
&& useradd --uid 1000 --gid mqm --home-dir /var/mqm mqm \
&& usermod -G mqm root \
&& cd /tmp/mq/MQServer \
# Accept the MQ license
&& ./mqlicense.sh -text_only -accept \
# Install MQ using the RPM packages
&& rpm -ivh --force-debian $MQ_PACKAGES \
# Recommended: Set the default MQ installation (makes the MQ commands available on the PATH)
&& /opt/mqm/bin/setmqinst -p /opt/mqm -i \
# Clean up all the downloaded files
&& rm -rf /tmp/mq \
&& rm -rf /var/lib/apt/lists/*

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y python3-pip jq unzip gettext curl openssl ca-certificates groff less

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && unzip awscli-bundle.zip && /usr/bin/python3.4 awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && rm -rf awscli-bundle*


