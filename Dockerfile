FROM ubuntu:16.04

ENV LANG C.UTF-8
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

# for Django
COPY django-tutorial /code/
RUN pip3 install -r /code/requirements.txt

# for Bootstrap
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm install
