FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential python
RUN apt-get install -y python-pip python-dev libmysqld-dev liblzma-dev zlib1g-dev git libffi-dev libssl-dev cmake
RUN apt-get install -y wget
RUN pip install pip --upgrade
ADD caas-test /caas-test
WORKDIR /caas-test
RUN pip install -r ./requirements.txt
EXPOSE 5000
CMD ["python app.py"]
