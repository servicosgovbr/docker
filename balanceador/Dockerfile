FROM haproxy:1.6

ADD haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
ADD ssl /etc/ssl
ADD run.sh /run.sh


EXPOSE 80 443

CMD /run.sh
