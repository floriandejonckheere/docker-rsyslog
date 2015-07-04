#!/bin/bash

docker run -d --name rsyslog \
	-v "$(pwd)/var/log/remote/":/var/log/remote/ \
	--dns=172.17.42.1 \
	--hostname=rsyslog.services.thalarion.be \
	thalarion/rsyslog
