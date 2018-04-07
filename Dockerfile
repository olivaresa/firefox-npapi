FROM debian:jessie

MAINTAINER Alexander Olivares <olivaresa@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get update

RUN apt-get install -y --no-install-recommends firefox-esr \
                      icedtea-plugin dbus-x11 fonts-dejavu \
                      fonts-lato fonts-liberation curl

RUN adduser --disabled-password user --gecos "User"
USER user
ENV HOME /home/user

RUN echo -e '\npref("browser.tabs.remote.autostart", false);\npref("browser.tabs.remote.autostart.2", false);\n' >> /etc/firefox-esr/firefox-esr.js

RUN curl -L https://fpdownload.adobe.com/pub/flashplayer/pdc/29.0.0.113/flash_player_ppapi_linux.x86_64.tar.gz | tar zxv -C /usr/lib/mozilla/plugins --wildcards *.so

CMD ["firefox","--new-instance","about:blank"]
