FROM ubuntu:16.04

MAINTAINER Wei-Ming Wu <wnameless@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

COPY environment /etc/

CMD /usr/sbin/startup.sh && /usr/sbin/sshd -D
