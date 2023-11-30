# syntax=docker/dockerfile:1.2
FROM python:latest
# put you docker configuration here
COPY ./requirements.txt /requirements.txt

#
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

#
COPY ./app ./app

# 
CMD ["uvicorn", "app:api.app", "--host", "0.0.0.0", "--port", "80"]