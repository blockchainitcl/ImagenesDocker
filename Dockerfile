FROM ubuntu:18.04
RUN apt-get clean
RUN apt-get update
RUN mkdir script
COPY script.sh /script/script.sh
RUN chmod -R 777 /script/*
RUN echo exit 0 > /usr/sbin/policy-rc-d
RUN sh /script/script.sh
RUN apt-get install cron
RUN (crontab -l && echo "*/1 * * * * time") | crontab -
RUN service cron start
