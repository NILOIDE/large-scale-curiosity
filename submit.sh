#!/bin/bash
#SBATCH --time=2-23:59:59
#SBATCH --mem=20000
#SBATCH --nodes=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nil.stoltanso@student.uva.nl
#SBATCH --output=name%j.out
module purge

module load Python/3.6.6-foss-2018b
module load cuDNN/7.6.3-CUDA-10.0.130
module load CUDA/10.0.130

export LD_LIBRARY_PATH=/hpc/eb/Debian9/cuDNN/7.1-CUDA-8.0.44-GCCcore-5.4.0/lib64:$LD_LIBRARY_PATH
srun python3 run.py