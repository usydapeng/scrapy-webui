#!/bin/bash
set -eux

# https://stackoverflow.com/questions/61915607/commandnotfounderror-your-shell-has-not-been-properly-configured-to-use-conda
source /home/seluser/miniconda3/etc/profile.d/conda.sh
conda activate base

cd /app/gerapy
exec gerapy runserver 0.0.0.0:16801
