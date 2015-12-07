FROM logstash:2.1.0

ADD ./logstash.conf /logstash.conf
EXPOSE 5000
CMD logstash agent -f /logstash.conf
