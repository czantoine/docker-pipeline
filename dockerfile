# syntax=docker/dockerfile:1
FROM ubuntu:20.04
WORKDIR /home/antoine/docker/

RUN apt-get update -y
RUN apt-get -y install python3 python3-pip

RUN apt-get update
RUN pip install flask

COPY app.py ./

CMD ["python3", "app.py"]
