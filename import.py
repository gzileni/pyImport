
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

import database
import config
import os
import geopandas

def importGPX():
    print('import gpx')

def importLayers():
    # get local path
    localPath = os.getcwd()
    # create database engine
    db = database.engine()
    # read config to load shape or gpx files
    cf = config.get('config.json')
    
    for layer in cf["layers"]:
        if (str(layer["type"]).lower() == 'local'):
            path = localPath + '/' + layer["value"]
        else:
            path = layer["value"]
        
        print('Read file: ' + path)
        df = geopandas.read_file(path) 
        df.to_postgis(str(layer["name"]),
                      db,
                      if_exists="replace")  
        
        print('import shape file to table ' + str(layer["value"]) + ' - Ok.')

def main():
    importLayers()
    
if __name__ == '__main__':
    main()
