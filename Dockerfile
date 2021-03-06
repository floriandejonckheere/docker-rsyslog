FROM ubuntu:14.04

MAINTAINER "Florian Dejonckheere <florian@floriandejonckheere.be>"

ENV DEBIAN_FRONTEND noninteractive

ADD rsyslog.list /etc/apt/sources.list.d/rsyslog.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0F6DD8135234BF2B

RUN apt-get update && \
	apt-get install -y rsyslog

# Create app structure
RUN mkdir -p /var/log/remote/
RUN chown -R syslog:adm /var/log/remote/
ADD rsyslog.conf /etc/rsyslog.conf

VOLUME /var/log/remote/

EXPOSE 1514
EXPOSE 1514/udp

CMD /usr/sbin/rsyslogd -n -f /etc/rsyslog.conf
