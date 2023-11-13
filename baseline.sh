#!/bin/bash
#SBATCH --job-name="recreate_baseline"
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu-v100
#SBATCH --nodes=1
#SBATCH --time 0-8:00:00
#SBATCH --ntasks=1
#SBATCH --output=/mnt/qb/work/eickhoff/esx599/recreate_baseline.out
#SBATCH --error=/mnt/qb/eickhoff/esx599/recreate_baseline.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kora.helm@student.uni-tuebingen.de