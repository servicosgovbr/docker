FROM python:2.7

RUN pip install elasticsearch-curator==3.2.3

ENV INTERVAL_IN_HOURS=24
ENV BIGGER_THAN_GIGA=20
ENV ESNAME="localhost"
ADD run.sh /run.sh

CMD /run.sh
