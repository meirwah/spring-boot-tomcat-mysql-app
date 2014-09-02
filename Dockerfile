FROM ubuntu:latest

MAINTAINER Meir Wahnon

RUN apt-get update

RUN apt-get install default-jre -y