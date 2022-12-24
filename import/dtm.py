
import os
import subprocess
import pathlib

from osgeo import gdal, osr
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter
from dotenv import load_dotenv

dotenv_path = pathlib.Path('../.env')
load_dotenv(dotenv_path=dotenv_path)

# Parse command line arguments
parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter)
parser.add_argument("-f", "--file", default="",
                    help="shape file name to import")
parser.add_argument("-t", "--table", default="",
                    help="table's name")
args = vars(parser.parse_args())

def main():
    
    fileData = args["file"]
    table = args["table"]

    # if (fileData == ""):
    #    raise ValueError(
    #        "E' necessario il nome del file con l'opzione -f. \n Usare --help per maggiori informazioni.")
    #else:
    #    if (table == ""):
    #        table = str(fileData).lower()
            
    path = os.getcwd() + '/data/dtm.tif'
    raster = gdal.Open(path)
    proj = osr.SpatialReference(wkt=raster.GetProjection())
    projection = str(proj.GetAttrValue('AUTHORITY', 1))
    gt = raster.GetGeoTransform()
    pixelSizeX = str(round(gt[1]))
    pixelSizeY = str(round(-gt[5]))
    
    cmds = './raster2pgsql.py -I -M -F' + \
        ' -r data/*.tif' + \
        ' -s ' + projection + \
        ' -t ' + pixelSizeX + 'x' + pixelSizeY + \
        ' public.dtm'
    
    print(cmds)
    cmds = './raster2pgsql.py -I -M -F' + \
            ' -r data/*.tif' + \
            ' -s ' + projection + \
            ' -t ' + pixelSizeX + 'x' + pixelSizeY + \
            ' public.dtm' + \
            ' | psql' + \
            ' -h ' + os.getenv('PGHOST') + \
            ' -d ' + os.getenv('POSTGRES_DATABASE_NAME') + \
            ' -U ' + os.getenv('POSTGRES_USER') + \
            ' -p ' + str(os.getenv('PGPORT')) + \
            ' -W'
    print(cmds)
    subprocess.call(cmds, shell=True)

        # psql -h <IP_Address> -p <port_no> -d <database_name> -U <DB_username> -W

if __name__ == '__main__':
    main()
