FROM python:3-alpine AS build
RUN apk update
RUN apk add make zip pandoc
COPY ./yt-dlp /youtube-dl
WORKDIR /youtube-dl
RUN make

FROM python:3-alpine
COPY --from=build /youtube-dl/yt-dlp /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp
WORKDIR /mnt
CMD [ "sh", "-c", "yt-dlp $url" ]
