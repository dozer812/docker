FROM python:3.9.18-bullseye
LABEL maintainer="anvkosykh@gmail.com"
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . .

ADD /app/requirements.txt .
ADD /app/app.py .

RUN pip install -r requirements.txt

CMD [ "python", "app.py" ]
