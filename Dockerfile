#
#
#

FROM python:3.8.13-slim-buster

VOLUME ./:app/

COPY . /app/
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "gpumon.py"]