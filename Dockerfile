FROM python:3-alpine

WORKDIR /code

COPY ./requirements.txt /code
RUN pip install -r requirements.txt
RUN mkdir db

COPY . /code

EXPOSE 8000
CMD sh init.sh && python manage.py runserver 0.0.0.0:8000
