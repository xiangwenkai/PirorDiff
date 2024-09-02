#!/bin/bash
#SBATCH -J piorD
#SBATCH -p gpu1
#SBATCH -N 1
#SBATCH -w node[83]
#SBATCH --mem 40G
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=icoxia@gmail.com
#SBATCH --output=train.out
#SBATCH --error=train.err
#SBATCH --cpus-per-task=4
module load anaconda3/2021.05
source activate ipdiff

python train.py --config configs/training.yml