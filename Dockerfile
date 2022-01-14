FROM consol/centos-xfce-vnc
ENV REFRESHED_AT 2018-03-18

MAINTAINER "Pasakorn Tiwatthanont" <ptiwatthanont@gmail.com>

USER 0
# To fix the problem of docker:consol/centos-xfce-vnc
RUN yum-config-manager --disable tigervnc-el7


# RUN yum update -y
# RUN yum install -y findutils net-tools hostname

# RUN yum groupinstall -y 'Basic Desktop'
# RUN dnf install -y @xfce-desktop @xfce-apps @graphical-internet
# RUN dnf install -y @gnome-desktop @graphical-internet

# RUN yum install -y tigervnc-server
# RUN mkdir ~/.vnc
# RUN x11vnc -storepasswd 123456 ~/.vnc/passwd


COPY lv_iso/ /lv_iso
WORKDIR /lv_iso
RUN yum install -y procps avahi
RUN ./INSTALL --accept-license --no-prompt --full-only

WORKDIR /
RUN rm -rf /lv_iso

# Back to the user account for properly running scripts from docker:consol/centos-xfce-vnc
USER 1000
