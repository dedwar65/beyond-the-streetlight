#!/bin/bash -e

SCPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

cd "$SCPT_DIR"

ipython *.ipynb

python ./code/main/parse_GB_raw_data.py
python ./code/main/parse_SPF_raw_data.py
python ./code/main/scrape_FRED_data.py
python ./code/main/annual_forecasts.py
python ./code/main/compute_abs_error.py
python ./code/main/abse_reg.py

