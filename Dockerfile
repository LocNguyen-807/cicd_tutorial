FROM ubuntu:latest
MAINTAINER Tuan Thai "tuanthai@example.com"


RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential

ADD . /flask_app
WORKDIR /flask_app

RUN pip3 install --break-system-packages  -r requirements.txt

ENTRYPOINT ["./cicd/bin/python"]
CMD ["flask_docker.py"]
