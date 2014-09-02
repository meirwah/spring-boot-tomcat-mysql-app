############################################################
# Dockerfile to build spring boot app container images
# Based on Ubuntu
############################################################

FROM ubuntu:latest

MAINTAINER Meir Wahnon

RUN apt-get update

RUN apt-get install default-jre -y

RUN apt-get install default-jdk -y

RUN apt-get install maven -y

ADD pom.xml /