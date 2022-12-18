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

import import.config as config
import os
import dask_geopandas
import asyncio
import logging

def importGPX():
    print('import gpx')

async def toParquet(df, table, if_exists):
    
    localPath = os.getcwd()
    path = localPath + '/parquet/' + table + '.parquet'
    print(path)
    df.to_parquet(path) 
    # ----------------------------------
    # TODO: use Apache Spark
    # Info:
    # https://github.com/big-data-europe/docker-spark
    # Append file parquet to Apache Spark
    
async def importLayers():
    # get local path
    localPath = os.getcwd()
    # read config to load shape or gpx files
    cf = config.get('config.json')
    
    for layer in cf["layers"]:
        path = localPath + '/data/' + layer["value"]
        msg = 'reading file ' + layer["value"] + ' and start importing ...'
        print(msg)
        logging.info(msg)
        await asyncio.create_task(toParquet(dask_geopandas.read_file(path, chunksize=50000), 
                                            str(layer["key"]), 
                                            layer["if_exists"]))
    
def main():
    asyncio.run(importLayers())
    
if __name__ == '__main__':
    main()
