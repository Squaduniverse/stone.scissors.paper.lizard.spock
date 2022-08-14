# syntax=docker/dockerfile:1

FROM python:3.11-rc-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY process process

CMD python3 -m flask --app process/app.py run --host=0.0.0.0