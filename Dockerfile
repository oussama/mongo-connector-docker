FROM python:3.4
MAINTAINER oussama@github

ENV DEBIAN_FRONTEND noninteractive
RUN pip install mongo-connector==2.5 elastic-doc-manager 'elastic2-doc-manager[elastic5]'

RUN mkdir /conf && mkdir /var/log/mongo-connector
COPY ./config.json /conf/

CMD ["mongo-connector", "-c", "/conf/config.json"]
