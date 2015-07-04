# Docker Remote Syslog

This Dockerfile provides a container running a rsyslogd facility.

## Configuration

### Server

Your logs will magically appear in `var/logs/remote`. No configuration is needed.

### Client

Add the following line to `/etc/rsyslog.conf` and adjust the IP address or hostname.

```
*.*     @@192.168.1.2:1514
```

## Build

```
$ ./build.sh
```

## Execution

This creates a container using ALL overrides in `etc/`
```
$ ./run.sh
```
