#!/bin/bash
#SBATCH -J launcher            # job name
#SBATCH -o launcher.o%j        # output and error file name (%j expands to jobID)
#SBATCH -N 32               # number of nodes requested
#SBATCH -n 8              # total number of mpi tasks requested
#SBATCH -p gtx    # queue (partition) -- normal, development, etc.
#SBATCH -t 01:30:00         # run time (hh:mm:ss) - 1.5 hours
#SBATCH -A 12345678

module load launcher-gpu

export LAUNCHER_WORKDIR=Set-Your-Launcher-Workdir-here
export LAUNCHER_JOB_FILE=Set-Your-Launcher-Job-File-here

${LAUNCHER_DIR}/paramrun
~                                
