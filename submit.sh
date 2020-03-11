#!/bin/bash
#SBATCH --time=2-23:59:59
#SBATCH --mem=20000M
#SBATCH --nodes=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nil.stoltanso@student.uva.nl
#SBATCH --output=name%j.out
module purge
module load 2019
module load Anaconda3/2018.12
module load cuDNN/7.6.3-CUDA-10.0.130
module load CUDA/10.0.130

# run conda and activate the thesis environment
. /sw/arch/Debian9/EB_production/2019/software/Anaconda3/2018.12/etc/profile.d/conda.sh
conda activate test

export LD_LIBRARY_PATH=/hpc/eb/Debian9/cuDNN/7.1-CUDA-8.0.44-GCCcore-5.4.0/lib64:$LD_LIBRARY_PATH
srun python3 run.py