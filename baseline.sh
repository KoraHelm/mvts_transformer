#!/bin/bash
#SBATCH --job-name="recreate_baseline"
#SBATCH --gres=gpu:1
#SBATCH --time 0-5:00:00
#SBATCH --output=/mnt/qb/work/eickhoff/esx599/recreate_baseline.out
#SBATCH --error=/mnt/qb/eickhoff/esx599/recreate_baseline.err