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
import database

os.environ['USE_PYGEOS'] = '0'

from geopandas import GeoDataFrame  # Loading boundaries Data

def main():
    geo_df = GeoDataFrame.from_file(sys.argv[1])
    database.save(geo_df, sys.argv[2], sys.argv[3])
    
if __name__ == '__main__':
    main()
