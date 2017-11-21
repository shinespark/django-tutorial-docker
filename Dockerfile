FROM ubuntu:16.04

ENV LANG C.UTF-8
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

COPY django-tutorial/requirements.txt /code/
RUN pip3 install -r /code/requirements.txt
COPY django-tutorial /code/
