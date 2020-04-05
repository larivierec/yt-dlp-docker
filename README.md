# Run latest youtube-dl in docker on Windows 10

This repo provides a way to run the latest version of [youtube-dl](https://github.com/ytdl-org/youtube-dl)
on Windows 10 using docker.

## Requirements

* Windows 10
* Docker desktop

## Setup instructions

Clone the repo and run build.cmd:

    git clone https://github.com/paviad/youtube-dl-docker.git
    cd youtube-dl-docker
    build

## Downloading a video

Running `dlv.cmd` will simply run youtube-dl and give you the output, you may run `dlv --help` to get command line options.

To download a video run `dlv.cmd` and surround the url with quotes, e.g.

    dlv "<youtube link>"

The file will be saved in the `out/` directory.

There is a shortcut batch file that only extracts audio in mp3 format called dla.cmd, usage e.g.

    dla "<youtube link>"

It simply adds `-x --audio-format mp3` to the command line arguments.
