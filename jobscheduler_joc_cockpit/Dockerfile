FROM openjdk:8-slim

ENV JS_MAJOR_VER 1.13
ENV JS_MINOR_VER 4
RUN apt-get update && apt-get install -y gettext-base wget netcat
RUN wget https://download.sos-berlin.com/JobScheduler.${JS_MAJOR_VER}/joc_linux.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
RUN tar xvzf joc_linux.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
WORKDIR /joc.${JS_MAJOR_VER}.${JS_MINOR_VER}
COPY docker-entrypoint.sh ./
COPY joc_install.xml.template /tmp

EXPOSE 40446 4446
ENTRYPOINT ["./docker-entrypoint.sh"]