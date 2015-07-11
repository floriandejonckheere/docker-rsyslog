#!/bin/bash

docker run $@ --name rsyslog \
	-v "$(pwd)/var/log/remote/":/var/log/remote/ \
	-p 127.0.0.1:1514:1514 \
	-p 127.0.0.1:1514:1514/udp \
	--dns=172.17.42.1 \
	--hostname=rsyslog.services.thalarion.be \
	thalarion/rsyslog
