FROM python:3.6-slim-stretch

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip3 install -r requirements.txt

ENTRYPOINT ["./gunicorn_start.sh"]