FROM python:3.10.9-slim

RUN apt-get update -q \
    && apt-get install --no-install-recommends -qy \
    gcc \      
    gdal-bin \
    libgdal-dev \
    g++ \                          
    inetutils-ping \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN mkdir parquet

RUN python -m venv /app/venv

# The code to run when container is started:
COPY . .

RUN chmod +x import.py
RUN . /app/venv/bin/activate 
RUN pip install --upgrade python-dotenv dask_geopandas sqlalchemy \
    psycopg2 geoalchemy2 pip aiohttp aiofiles pyogrio fastparquet \
    pyarrow

CMD ["python3", "import.py"]