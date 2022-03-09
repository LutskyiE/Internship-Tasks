FROM ubuntu:18.04
RUN apt-get update -y && apt-get upgrade
RUN apt-get install default-jdk -y

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY . /usr/src/app/

CMD ["java", "java_app"]
