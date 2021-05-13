FROM python:3.8-slim

COPY . ./

RUN apt-get update && pip install --upgrade pip && pip install --requirement requirements.txt

EXPOSE 2122

CMD gunicorn --bind 0.0.0.0:2122 apiV2:app --timeout 40000 --workers=1 --capture-output
