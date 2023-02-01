# Thanks

Paviad for his initial version.
This repo uses python3 alpine images in order to build and execute the `yt-dlp` executable.

# Run latest ytp-dlp in docker

This repo provides a way to run the latest version of [yt-dlp](https://github.com/yt-dlp/yt-dlp).

## Requirements

* Docker

## Setup instructions

As a prerequisite you must install [Docker](https://www.docker.com/products/docker-desktop).

Then, clone the repo and run build.cmd:

    git clone https://github.com/larivierec/yt-dlp-docker.git
    cd yt-dlp-docker
    git submodule update --init

## Pulling the latest yt-dlp version

You can pull the latest by going in the the submodule directory `yt-dlp` checking out master and pulling.
Afterwards, rebuild with docker.

## Docker commands

To build with docker

```bash
docker build . -t yt-dlp
```

To download a video use

```bash
docker run --rm -it -v %cd%/out:/mnt -e url=%1 y2-dlp
```