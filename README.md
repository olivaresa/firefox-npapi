# Firefox Docker Image

A simple Docker image to run firefox 52 with support for java NPAPI

### Get Docker File

`git clone https://github.com/olivaresa/firefox-npapi.git`

### Build Image

`docker build . -t olivaresa/firefox-npapi`

### Build Container

`docker run -v $HOME/Downloads:/home/firefox/Downloads:rw -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged -e uid=$(id -u) -e gid=$(id -g) -e DISPLAY=unix$DISPLAY --name firefox-npapi olivaresa/firefox-npapi:latest`

### Execute

Run firefox container:

`docker start firefox-npapi`
