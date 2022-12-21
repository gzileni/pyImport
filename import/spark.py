#!/usr/bin/python3

# TODO: Read links
# ----------------------------------
# SHAPE: https://geopandas.org/en/stable/docs/reference/api/geopandas.read_file.html
# GPX: https://www.riannek.de/2022/gpx-to-geopandas/
# GPX: https://www.riannek.de/2022/elevation-to-gps-track-python/
# GPX: https://www.riannek.de/2022/runkeeper-gps-tracks-python-part-1/
# GPX: https://www.riannek.de/2022/runkeeper-gps-tracks-python-part-2/
# ----------------------------------
# Datasets
# https://github.com/pcm-dpc/DPC-Centri-Storici-Rischio-Sismico
# https://www.geocorsi.it/N1153/dataset-ispra-mosaicature-nazionali-di-pericolosita-in-open-data.html

import sys
import os
import pathlib

os.environ['USE_PYGEOS'] = '0'
os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable

import pandas as pd
from pyspark.sql import SparkSession
import pyspark.sql.functions as func  # resuse as func.coalace for example

from dotenv import load_dotenv

dotenv_path = pathlib.Path('./.env')
load_dotenv(dotenv_path=dotenv_path)

print(os.getenv('SPARK_HOST'))
spark_server = 'spark://' + str(os.getenv('SPARK_HOST')) + ':7077'

# Create SparkSession and attach Sparkcontext to it
spark = SparkSession.builder.master(spark_server).appName("import-geo").getOrCreate()
spark.sparkContext.setLogLevel("WARN")
sc = spark.sparkContext

def toSpark(geo_df, table):
    # geo_df = GeoDataFrame.from_file(path)
    
    # Setting a Projection
    geo_df.to_crs(4326)
    
    # Preparing our data for Spark
    # Spark expects a geospatial column as a WKT string. 
    # Internally it uses this to create OGC Geometries via Java Topology Suite (JTS). 
    # So in order to use Spatial Spark we will add the WKT column to our data.
    geo_df['wkt'] = pd.Series(
        map(lambda geom: str(geom.wkt), geo_df['geometry']),
        index=geo_df.index, dtype='string')

    # drop the geometry column because Spark can't infer a schema for it
    df = geo_df.drop("geometry", axis=1)
    spark_df = spark.createDataFrame(df).createOrReplaceTempView(table)
