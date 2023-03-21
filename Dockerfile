FROM python:3-slim-bullseye

RUN apt update && apt install -y --no-install-recommends git

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --upgrade pip \
    && pip install --upgrade setuptools \
    && pip install --no-cache-dir -r requirements.txt

CMD [ "sleep", "infinity" ]