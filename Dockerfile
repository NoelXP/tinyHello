FROM ubuntu:18.04
LABEL Author="Noel" Project="tinyHello"
USER root
RUN apt-get update && apt-get install -y \
	python3-pip
RUN pip3 install flask
COPY . /app
ENV FLASK_APP=/app/hello.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
CMD ["flask","run","--host=0.0.0.0"]
EXPOSE 5000