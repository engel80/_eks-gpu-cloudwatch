FROM pure/python:3.8-cuda10.2-base

VOLUME ./:app/

COPY . /app/
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "gpumon.py"]