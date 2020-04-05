FROM ubuntu
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install python
RUN apt-get -y install ffmpeg
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl
WORKDIR /mnt
CMD [ "sh", "-c", "youtube-dl $url" ]
