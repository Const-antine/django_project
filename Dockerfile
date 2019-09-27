FROM python:3.6 as img_pt
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /code/


FROM mysql:5.7 as img_db

ADD db.sql /docker-entrypoint-initdb.d
