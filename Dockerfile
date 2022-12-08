#Deriving the latest base image
FROM python:3.8-slim
LABEL Maintainer="Giuseppe Zileni <giuseppe.zileni@gmail.com>"

RUN apt-get update -q \
    && apt-get install --no-install-recommends -qy \
    gcc \      
    gdal-bin \
    libgdal-dev \
    g++ \                          
    inetutils-ping \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app/src
COPY . ./

RUN python -m venv /usr/app/src/venv
RUN . /usr/app/src/venv/bin/activate
RUN /usr/app/src/venv/bin/python -m pip install --upgrade pip
RUN /usr/app/src/venv/bin/python -m pip install numpy
RUN /usr/app/src/venv/bin/python -m pip install numba
RUN /usr/app/src/venv/bin/python -m pip install distributed
RUN /usr/app/src/venv/bin/python -m pip install -r requirements.txt

CMD [ "python", "./import.py"]