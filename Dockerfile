FROM ubuntu:latest 

ADD files/01proxy /etc/apt/apt.conf.d/01proxy
RUN apt-get update -q && apt-get install -qy supervisor

ADD files/nodaemon.conf /etc/supervisor/conf.d/nodaemon.conf

CMD ["/usr/bin/supervisord"]
