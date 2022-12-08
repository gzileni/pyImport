#Deriving the latest base image
FROM python:latest
LABEL Maintainer="Giuseppe Zileni <giuseppe.zileni@gmail.com>"
WORKDIR /usr/app/src

COPY . ./

RUN python3 -m venv /usr/app/src/venv
RUN . /usr/app/src/venv/bin/activate && pip3 install -r requirements.txt

CMD [ "python3", "./import.py"]