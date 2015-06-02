FROM python:3-onbuild
MAINTAINER ipedrazas@gmail.com

WORKDIR /app

RUN youtube-dl -i  https://www.youtube.com/watch?v=9kyLY1xWrCI&list=PLnbHUsOu-Nfvc2bTj2FWiyzrOs_UkVxZH -o '/data/%(title)s.%(ext)s' --restrict-filenames
