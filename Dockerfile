# Dockerfile for Flask app "jwt-api-test"

FROM python:stretch

COPY . /app
WORKDIR /app

COPY requirements.txt /
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["./gunicorn_starter.sh"]
