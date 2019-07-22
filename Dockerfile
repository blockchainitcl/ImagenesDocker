FROM ubuntu:18.04
RUN apt-get clean
RUN apt-get update
RUN mkdir script
COPY script.sh /script/script.sh
RUN chmod -R 777 /script/*
CMD ./script/script.sh