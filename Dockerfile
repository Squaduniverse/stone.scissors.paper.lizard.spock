FROM python:3.11-rc-slim

WORKDIR /app

COPY libraries.txt .

COPY process process

RUN pip install virtualenv

RUN virtualenv env

RUN pip install -r libraries.txt

# CMD python process/API.py
CMD python -m flask --app process/app.py run --host=0.0.0.0  



