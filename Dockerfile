#Deriving the latest base image
FROM python:3.10-alpine3.15


#Labels as key value pair
LABEL Maintainer="bogdan"


RUN mkdir -p  /srv/app/conf

WORKDIR /srv/app

COPY main.py  /srv/app
COPY requirements.txt /srv/app
COPY web.conf  /srv/app/conf

RUN pip install -r requirements.txt 

CMD python ./main.py
