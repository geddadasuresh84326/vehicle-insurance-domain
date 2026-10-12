## use an official python 3.10 image from docker hub
FROM python:3.10-slim-buster

## set the working directory
WORKDIR /app

## copy the local code to docker working dir
COPY . /app

## install the dependencies
RUN pip install -r requirements.txt

## expose the port fastapi run on
EXPOSE 5000

## command to run the fastapi app
CMD ["python3","app.py"]