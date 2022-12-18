
import json
import pathlib

# Read JSON Configurations
def get(path):
    # Opening JSON file
    f = open(path)
    # returns JSON object as
    # a dictionary
    config = json.load(f)
    # Closing file
    f.close()
    return config