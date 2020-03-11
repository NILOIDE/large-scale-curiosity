#!/bin/bash
#SBATCH --time=2-23:59:59
#SBATCH --mem=20000
#SBATCH --nodes=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nil.stoltanso@student.uva.nl
#SBATCH --output=name%j.out
module purge
module load eb

module load Python/3.6.3-foss-2017b
module load cuDNN/7.0.5-CUDA-9.0.176
module load NCCL/2.0.5-CUDA-9.0.176

export LD_LIBRARY_PATH=/hpc/eb/Debian9/cuDNN/7.1-CUDA-8.0.44-GCCcore-5.4.0/lib64:$LD_LIBRARY_PATH
python run.py