FROM fedora:latest
MAINTAINER "Pasakorn Tiwatthanont" <ptiwatthanont@gmail.com>

COPY lv_iso/ /lv_iso
WORKDIR /lv_iso
# RUN yum localinstall  \
#     labview-2021-appbuild-21.0.0-1.x86_64.rpm  \
#     labview-2021-community-21.0.0.49262-0+f110.x86_64.rpm  \
#     labview-2021-community-exe-21.0.0.49262-0+f110.x86_64.rpm  \
#     labview-2021-core-21.0.0-1.x86_64.rpm  \
#     labview-2021-desktop-21.0.0-1.x86_64.rpm  \
#     labview-2021-examples-21.0.0-1.x86_64.rpm  \
#     labview-2021-exe-libs-21.0.0.49262-0+f110.x86_64.rpm  \
#     labview-2021-help-21.0.0-1.x86_64.rpm  \
#     labview-2021-profull-exe-21.0.0.49262-0+f110.x86_64.rpm  \
#     labview-2021-ref-21.0.0-1.x86_64.rpm  \
#     labview-2021-rte-21.0.0.49262-0+f110.x86_64.rpm  \
#     lvsupport2021-vianalyzer-21.0.0-f0.x86_64.rpm  \
#     nicurli-21.0.0.49152-0+f0.i386.rpm  \
#     nicurli-21.0.0.49152-0+f0.x86_64.rpm  \
#     nicurli-32bit-21.0.0.49152-0+f0.x86_64.rpm  \
#     niexfinder-base-1.0-59.noarch.rpm  \
#     niexfinder-exe-1.0-59.x86_64.rpm  \
#     niexfinder-labview-2021-21.0.0-1.noarch.rpm  \
#     niexfinder-lib-2021-21.0.0-1.x86_64.rpm  \
#     nijsonmapi-21.0.0.49152-0+f0.noarch.rpm  \
#     ni-labview-command-line-interface-4.0.0.49152-0+f0.x86_64.rpm  \
#     nilvcompare-21.0.0-1.noarch.rpm  \
#     nilvmerge-21.0.0-1.noarch.rpm  \
#     ni-python-interface-21.0.0.49152-0+f0.x86_64.rpm  \
#     ni-service-locator-21.0.0.49152-0+f0.x86_64.rpm  \
#     nisslcerts-20.5.1.49152-0+f0.noarch.rpm  \
#     nissli-20.5.1.49152-0+f0.i386.rpm  \
#     nissli-20.5.1.49152-0+f0.x86_64.rpm  \
#     nissli-32bit-20.5.1.49152-0+f0.x86_64.rpm  \
#     nitdmsi-21.0.0.49152-0+f0.i386.rpm  \
#     nitdmsi-21.0.0.49152-0+f0.x86_64.rpm  \
#     nitdmsi-32bit-21.0.0.49152-0+f0.x86_64.rpm  \
#     -y

RUN yum install -y procps avahi
RUN ./INSTALL --accept-license --no-prompt --full-only


# ENTRYPOINT [ "/usr/bin/google-chrome" ]
# CMD [ "--user-data-dir=/data"]
