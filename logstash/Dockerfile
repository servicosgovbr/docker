FROM logstash:latest

ADD ./logstash.conf /logstash.conf
EXPOSE 5000
CMD logstash agent -f /logstash.conf
