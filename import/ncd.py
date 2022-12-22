
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

import os
import database
import spark
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter

os.environ['USE_PYGEOS'] = '0'

# Parse command line arguments
parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter)
parser.add_argument("-f", "--file", default="",
                    help="shape file name to import")
parser.add_argument("-t", "--table", default="",
                    help="table's name")
parser.add_argument("-e", "--exists", default="replace", 
                    help="Method to write data append/replace")
parser.add_argument("-s", "--engine", default="postgis",
                    help="Send data to PostGIS (postgis) or Apache spark server (spark)")
args = vars(parser.parse_args())

fileData = args["file"]
table = args["table"]
ifexists = args["exists"]
engine = args["engine"]

from geopandas import GeoDataFrame  # Loading boundaries Data

def main():
    
    if (fileData == ""):
        raise ValueError(
            "E' necessario il nome del file con l'opzione -f. \n Usare --help per maggiori informazioni.")
    else:
        if (table == ""):
            raise ValueError(
                "E' necessario indicare il nome della tabella con l'opzione -t. \n Usare --help per maggiori informazioni.")
        else:
            path = os.getcwd() + '/data/' + fileData
            geo_df = GeoDataFrame.from_file(path)
            if (engine == "postgis"):
                database.save(geo_df, table, ifexists)
            elif (engine == 'spark'):
                spark.send(geo_df, table)
    
if __name__ == '__main__':
    main()
