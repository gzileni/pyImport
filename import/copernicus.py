
import os
import xarray as xr
import database
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter
from netCDF4 import Dataset

# Parse command line arguments
parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter)
parser.add_argument("-f", "--file", default="",
                    help="shape file name to import")
parser.add_argument("-t", "--table", default="",
                    help="table's name")
args = vars(parser.parse_args())

fileData = args["file"]
table = args["table"]

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
            ds = xr.open_dataset(path, engine="netcdf4",
                                 group="PRODUCT")
            dds = ds.to_dask_dataframe()
            dds.query('qa_value >= 1').to_sql(table, database.uri(),
                       chunksize=1000, 
                       compute=True, 
                       parallel=True)
            
if __name__ == '__main__':
    main()
