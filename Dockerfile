FROM debian:jessie

MAINTAINER Alexander Olivares <olivaresa@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get update

RUN apt-get install -y --no-install-recommends firefox-esr \
                      icedtea-plugin dbus-x11 fonts-dejavu \
                      fonts-lato fonts-liberation curl


RUN echo -e '\nlockPref("browser.tabs.remote.autostart.2", false);\n' >> /etc/firefox-esr/firefox-esr.js

RUN curl -L https://fpdownload.adobe.com/get/flashplayer/pdc/29.0.0.113/flash_player_npapi_linux.x86_64.tar.gz | tar zxv -C /usr/lib/mozilla/plugins --wildcards libflashplayer.so

RUN adduser --disabled-password user --gecos "User"
USER user
ENV HOME /home/user

CMD ["firefox","--new-instance","about:blank"]
