#!/bin/bash

SCPT_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

cd "$SCPT_DIR"

ipython *.ipynb

python code/main/reproduce.py



