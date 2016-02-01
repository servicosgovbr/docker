FROM python:2.7-slim

RUN pip install elasticsearch-curator==3.4.0

ENV INTERVAL_IN_HOURS=24
ENV BIGGER_THAN_GIGA=20
ENV ESNAME="localhost"
ADD run.sh /run.sh

CMD /run.sh
