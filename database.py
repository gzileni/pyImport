
import os
import pathlib

from dotenv import load_dotenv
from sqlalchemy import *
from sqlalchemy.engine import create_engine
from sqlalchemy.schema import *

dotenv_path = pathlib.Path('./.env')
load_dotenv(dotenv_path=dotenv_path)

def engine():
    url = "postgresql://" + \
          str(os.getenv('POSTGRES_USER')) + ":" + \
          str(os.getenv('PGPASSWORD')) + "@" + \
          str(os.getenv('PGHOST')) + ":" + \
          str(os.getenv('PGPORT')) + "/" + \
          str(os.getenv('POSTGRES_DATABASE_NAME'))
    return create_engine(url)
