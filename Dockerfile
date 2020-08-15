FROM python:alpine3.12

RUN apk update && \
    apk --no-cache add gcc musl-dev python3-dev libffi-dev openssl-dev sshpass openssh-client

RUN pip --no-cache-dir install ansible


CMD ["/usr/local/bin/ansible","--version"]