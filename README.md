# About

Simple Docker image to run firefox v52 with support for Java NPAPI

## How to use this image

`docker run -v $HOME/Downloads:/home/firefox/Downloads:rw -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged -e uid=$(id -u) -e gid=$(id -g) -e DISPLAY=unix$DISPLAY --name firefox-npapi olivaresa/firefox-npapi:latest`

### Run firefox

`docker start firefox-npapi`
