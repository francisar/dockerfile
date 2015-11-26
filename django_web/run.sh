#!/bin/bash
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
/usr/sbin/nginx
chown nginx.nginx -R /data/services/django
sudo -u nginx -H uwsgi --ini /data/services/django/uwsgi.ini
