FROM ubuntu:18.04
WORKDIR /home
RUN apt-get update && apt-get install curl openjdk-11-jdk git maven -y
RUN adduser --disabled-password --gecos 'test' jenkins
RUN curl -fsSL https://test.docker.com | sh
CMD ["sleep","600"]
