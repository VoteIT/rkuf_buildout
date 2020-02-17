#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/rkuf_buildout/etc/nginx.conf ./sites-available/rkuf.conf
cd sites-enabled
ln -s ../sites-available/rkuf.conf

service nginx stop
certbot certonly --standalone -d rkuf.voteit.se
service nginx start
