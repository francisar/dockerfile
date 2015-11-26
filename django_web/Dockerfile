#Version:0.0.1
FROM ubuntu:latest
MAINTAINER Francis Cui "382607308@qq.com"
RUN apt-get update
RUN apt-get install -y nginx && echo "daemon off;" >> /etc/nginx/nginx.conf
RUN apt-get install -y python-pip python-dev build-essential 
RUN pip install Django==1.8.3
RUN pip install flup
RUN pip install uwsgi
RUN pip install simplejson
RUN apt-get install -y python-openssl libssl-dev libxml2-dev python-ldap
RUN mv /etc/localtime /etc/localtime.bak && ln -s /usr/share/zoneinfo/Asia/Hong_Kong  /etc/localtime
ADD 99-sysctl.conf /etc/sysctl.d/
ADD run.sh /run.sh 
RUN chmod 755 /run.sh && mkdir -p /data/services/django
ADD django.conf /etc/nginx/conf.d/
VOLUME ["/etc/nginx/conf.d","/var/log","/data/services/django"]
WORKDIR /data/services/
EXPOSE 80
ENTRYPOINT ["/run.sh"]

