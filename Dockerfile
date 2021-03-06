FROM busybox:ubuntu-14.04
MAINTAINER Ian Blenke <ian@blenke.com>

ENV TERRAFORM_VERSION 0.3.1
RUN mkdir /terraform
RUN wget -P /terraform -O /terraform.zip http://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    cd /terraform && unzip /terraform.zip

VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/terraform/terraform"]
