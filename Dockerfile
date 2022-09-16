FROM python:3-alpine

RUN apk add --no-cache \
    bash \
    git \
  && apk add --no-cache --virtual .selenium_deps \
    build-base \
    python3-dev \
    libffi-dev \
    zlib-dev \
    jpeg-dev \
  && apk del .selenium_deps

RUN pip install seleniumbase
RUN mkdir /app

WORKDIR /app
