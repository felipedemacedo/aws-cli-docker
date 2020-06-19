FROM alpine:3.11

LABEL maintainer="Felipe Rodrigues<felipedemacedo.cin@gmail.com>"

RUN apk update

# https://stackoverflow.com/questions/54099218/how-can-i-install-docker-inside-an-alpine-container
RUN apk add --update docker openrc
RUN rc-update add docker boot

# Install base and dev packages
RUN apk add --no-cache --virtual .build-deps
RUN apk add bash

# Install build packages
RUN apk add make && apk add curl && apk add openssh

# Install git
RUN apk add git

# Install nodejs
RUN apk add nodejs

# Install yarn
RUN apk add yarn

# Set timezone to UTC by default
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

# Install aws-cli
RUN apk -Uuv add groff less python py-pip
RUN pip install awscli
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*

WORKDIR /root/.aws

COPY ./setup.sh .

RUN chmod +x ./setup.sh

CMD ["./setup.sh"]
