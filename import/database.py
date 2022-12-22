
import os
import pathlib

from dotenv import load_dotenv
from sqlalchemy import *
from sqlalchemy.engine import create_engine
from sqlalchemy.schema import *

dotenv_path = pathlib.Path('../.env')
load_dotenv(dotenv_path=dotenv_path)

def engine():
    url = "postgresql://" + \
          str(os.getenv('POSTGRES_USER')) + ":" + \
          str(os.getenv('POSTGRES_PASSWORD')) + "@" + \
          str(os.getenv('PGHOST')) + ":" + \
          str(os.getenv('PGPORT')) + "/" + \
          str(os.getenv('POSTGRES_DATABASE_NAME'))
    return create_engine(url)

def save(geo_df, table, replace):
      ife = "append" if replace == False or replace == None else "replace"
      db = engine()
      # geo_df = GeoDataFrame.from_file(path)
      # Setting a Projection
      geo_df.to_crs(4326)
      geo_df.to_postgis(table, db, if_exists=ife)
