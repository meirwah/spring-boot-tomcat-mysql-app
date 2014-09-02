FROM ubuntu:latest

MAINTAINER Meir Wahnon

RUN apt-get update

RUN apt-get install default-jre -y

RUN apt-get install default-jdk -y

RUN apt-get install maven -y