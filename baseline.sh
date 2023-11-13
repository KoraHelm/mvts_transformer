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

srun python3 src/main.py --output_dir experiments --comment "classification from Scratch" --name heartbeat --records_file Classification_records.xls --data_dir src/datasets/classification/heartbeat/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 400 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy