#!/bin/bash
set -eux

# https://stackoverflow.com/questions/61915607/commandnotfounderror-your-shell-has-not-been-properly-configured-to-use-conda
source /home/seluser/miniconda3/etc/profile.d/conda.sh
conda activate base

exec logparser -dir /app/logs
