#!/bin/bash
#SBATCH --time=0-00:10:00
#SBATCH --mem=20000M
#SBATCH --partition=gpu
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nil.stoltanso@student.uva.nl
#SBATCH --output=name%j_mpi.out
module purge
module load 2019

module load Anaconda3/2018.12
module load OpenMPI

# run conda and activate the thesis environment
. /sw/arch/Debian9/EB_production/2019/software/Anaconda3/2018.12/etc/profile.d/conda.sh
conda activate test

export LD_LIBRARY_PATH=/hpc/eb/Debian9/cuDNN/7.1-CUDA-8.0.44-GCCcore-5.4.0/lib64:$LD_LIBRARY_PATH
srun mpiexec -n 4 python3 run.py --envs_per_process=32 --nsteps_per_seg=128