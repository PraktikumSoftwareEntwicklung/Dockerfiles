FROM maven:3-alpine
ARG username=jenkinsbuild
USER root
RUN adduser -u 1500 -D -s /usr/sbin/nologin $username
COPY settings.xml /usr/share/maven/conf/settings.xml
