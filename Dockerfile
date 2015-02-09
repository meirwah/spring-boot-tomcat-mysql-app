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

ADD pom.xml /app/

ADD src/ /app/src/

WORKDIR /app/

RUN mvn package

EXPOSE  8080

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/spring-boot-sample-tomcat-1.1.5.RELEASE.jar"]
