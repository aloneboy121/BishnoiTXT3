FROM ubuntu:latest
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends gcc libffi-dev musl-dev ffmpeg aria2 python3-pip

COPY . /app/
WORKDIR /app/
RUN pip3 install
CMD python3 main.py
