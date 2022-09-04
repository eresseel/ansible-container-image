FROM alpine:latest

RUN apk update && apk add py3-pip ansible
RUN echo "alias python=python3.9" >> /root/.bashrc
RUN pip3 install ansible==6.1.0

CMD [ "ansible", "--version" ]
