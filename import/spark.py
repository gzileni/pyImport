# Info: https://gethue.com/blog/querying-spark-sql-with-spark-thrift-server-and-hue-editor/
# Info: https://hub.docker.com/r/bitnami/spark/

import sys
import os
import pathlib

os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable

import pandas as pd
from pyspark.sql import SparkSession
import pyspark.sql.functions as func  # resuse as func.coalace for example

from dotenv import load_dotenv

dotenv_path = pathlib.Path('../.env')
load_dotenv(dotenv_path=dotenv_path)
spark_server = 'spark://' + str(os.getenv('SPARK_HOST')) + ':7077'

def send(geo_df, table):
    
    # Create SparkSession and attach Sparkcontext to it
    spark = SparkSession.builder.master(
        spark_server).appName(table).getOrCreate()
    spark.sparkContext.setLogLevel("WARN")

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
    spark.createDataFrame(df).toDF().createOrReplaceTempView(table)
    sqlDF = spark.sql("SELECT * FROM " + table)
    sqlDF.show()
