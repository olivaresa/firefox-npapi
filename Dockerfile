FROM debian:jessie

MAINTAINER Alexander Olivares <olivaresa@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get install -y --no-install-recommends firefox-esr \
                      icedtea-plugin dbus-x11 fonts-dejavu \
                      fonts-lato fonts-liberation

RUN adduser --disabled-password user --gecos "User"
USER user
ENV HOME /home/user

CMD ["firefox","--new-instance","about:blank"]
