FROM logstash:1.5

ADD ./logstash.conf /logstash.conf
EXPOSE 5000
CMD logstash agent -f /logstash.conf
