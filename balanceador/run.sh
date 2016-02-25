#!/bin/bash

HAPROXY='/usr/local/etc/haproxy/haproxy.cfg'

if [ ! -f /etc/ssl/private/SERVICOSGOVBR.pem ]; then
   sed -i  '/bind \*\:443 ssl crt/d' $HAPROXY
   sed -i  '/acl secure dst_port eq 443/d' $HAPROXY
   sed -i  '/redirect scheme https if !{ ssl_fc }/d' $HAPROXY
   sed -i  '/rspadd Strict-Transport-Security/d' $HAPROXY
   sed -i  '/Secure if secure/d' $HAPROXY
fi 

exec haproxy -f $HAPROXY
