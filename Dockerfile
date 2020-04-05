FROM ubuntu AS build
RUN apt-get update
RUN apt-get -y install git make zip python pandoc
RUN git clone https://github.com/ytdl-org/youtube-dl.git
WORKDIR /youtube-dl
RUN make

FROM alpine
COPY --from=build /youtube-dl/youtube-dl /usr/local/bin/youtube-dl
RUN apk add --update python ffmpeg
RUN chmod a+rx /usr/local/bin/youtube-dl
WORKDIR /mnt
CMD [ "sh", "-c", "youtube-dl $url" ]
