# Info: https://gethue.com/blog/querying-spark-sql-with-spark-thrift-server-and-hue-editor/
# Info: https://hub.docker.com/r/bitnami/spark/

import sys
import os
import pathlib

os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable

from pyspark.sql import SparkSession
import pyspark.sql.functions as func  # resuse as func.coalace for example

from dotenv import load_dotenv

dotenv_path = pathlib.Path('../.env')
load_dotenv(dotenv_path=dotenv_path)
spark_server = 'spark://' + str(os.getenv('SPARK_HOST')) + ':7077'

def send(df, table):
    
    # Create SparkSession and attach Sparkcontext to it
    spark = SparkSession.builder.master(
        spark_server).appName(table).getOrCreate()
    spark.sparkContext.setLogLevel("WARN")
    
    #spark.createDataFrame(df, ['scanline',  'ground_pixel', 'time', 'corner', 'layer', 'delta_time', 'time_utc', 'qa_value', 'latitude', 'longitude', 'carbonmonoxide_total_column',
    #                           'carbonmonoxide_total_column_precision', 'carbonmonoxide_total_column_corrected'])
    spark.createDataFrame(df)
    df = spark.toDF()
    df_v = df.createOrReplaceTempView(table)
    sqlDF = spark.sql("SELECT * FROM " + table)
    sqlDF.show()
