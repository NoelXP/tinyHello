FROM python:3.7-alpine
LABEL Author="Noel" Project="tinyHello"
USER root
RUN pip install flask
COPY . /app
WORKDIR /app
ENV FLASK_APP=/app/hello.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
CMD ["flask","run","--host=0.0.0.0"]
EXPOSE 5000