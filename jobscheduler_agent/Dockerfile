FROM openjdk:8-slim

ENV JS_MAJOR_VER 1.13
ENV JS_MINOR_VER 4
RUN apt-get update && apt-get install -y wget
RUN wget https://download.sos-berlin.com/JobScheduler.${JS_MAJOR_VER}/jobscheduler_unix_universal_agent.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
RUN tar xvzf jobscheduler_unix_universal_agent.${JS_MAJOR_VER}.${JS_MINOR_VER}.tar.gz
RUN mkdir -p /opt/sos-berlin.com && mv jobscheduler_agent /opt/sos-berlin.com/
WORKDIR /opt/sos-berlin.com/jobscheduler_agent/bin
EXPOSE 4445
ENTRYPOINT ["./jobscheduler_agent.sh", "start_docker"]