FROM fayehuang/centos-supervisor
MAINTAINER FayeHuang

RUN yum -y httpd && yum clean all

COPY supervisord.conf /etc/supervisord.conf

EXPOSE 80 22
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
