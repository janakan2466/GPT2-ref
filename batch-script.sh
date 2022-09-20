#!/bin/bash
#SBATCH --job-name=GPT-Train

#SBATCH --partition=p100,t4v1,t4v2,rtx6000

#SBATCH --gres=gpu:1

#SBATCH --qos=normal

#SBATCH --cpus-per-task=4

#SBATCH --mem-per-cpu=8G

#SBATCH --output=slurm-%j.out

#SBATCH --error=slurm-%j.err

# prepare your environment here
conda activate env

# put your command here
# python3 wiki_download.py --lang bn

python3 model.py
