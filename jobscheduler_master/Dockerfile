FROM openjdk:8-slim

ENV JS_MAJOR_VER 1.13
ENV JS_MINOR_VER 4
RUN apt-get update && apt-get install -y gettext-base wget netcat
RUN mkdir -p /mnt/jobscheduler/data
RUN wget https://download.sos-berlin.com/JobScheduler.${JS_MAJOR_VER}/jobscheduler_linux-x64.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
RUN tar xvzf jobscheduler_linux-x64.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
WORKDIR /jobscheduler.${JS_MAJOR_VER}.${JS_MINOR_VER}
COPY docker-entrypoint.sh ./
COPY jobscheduler_install.xml.template /tmp

EXPOSE 40444 4444 48444
ENTRYPOINT ["./docker-entrypoint.sh"]
