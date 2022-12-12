FROM continuumio/miniconda3

RUN apt-get update -q \
    && apt-get install --no-install-recommends -qy \
    gcc \      
    gdal-bin \
    libgdal-dev \
    g++ \                          
    inetutils-ping \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN python -m venv /app/venv

# The code to run when container is started:
COPY . .
RUN . /app/venv/bin/activate 
RUN pip install python-dotenv
RUN pip install geopandas
RUN pip install sqlalchemy
RUN pip install psycopg2
RUN pip install geoalchemy2
