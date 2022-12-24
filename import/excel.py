
import os
import database
import pandas as pd
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter

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
            table = str(fileData).lower()
            
        path = os.getcwd() + '/data/' + fileData + '.xlsx'
        excel_df = pd.read_excel(path)
        excel_df.to_sql(table, database.uri(), chunksize=1000)
            
if __name__ == '__main__':
    main()
