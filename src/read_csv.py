# python script to read stock info from csv file

# structure of data
# TICKER.csv
#

import pandas as pd;

meta = pd.read_csv("/../data/stock_market_dataset/symbols_valid_meta.csv");

meta;