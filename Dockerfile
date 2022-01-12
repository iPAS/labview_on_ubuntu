FROM fedora:latest
# FROM centos:latest
MAINTAINER "Pasakorn Tiwatthanont" <ptiwatthanont@gmail.com>

COPY lv_iso/ /lv_iso
WORKDIR /lv_iso

RUN yum update -y
RUN yum install -y findutils net-tools hostname

RUN yum groupinstall -y 'Basic Desktop'
RUN yum install -y tigervnc-server x11vnc
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 123456 ~/.vnc/passwd

RUN yum install -y procps avahi
RUN ./INSTALL --accept-license --no-prompt --full-only

WORKDIR /
RUN rm -rf /lv_iso

# ENTRYPOINT [ "/usr/bin/google-chrome" ]
# CMD [ "--user-data-dir=/data"]
