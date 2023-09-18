FROM continuumio/anaconda3
RUN apt-get update -y --fix-missing &&\
    apt-get install -y pip

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
