#!/bin/bash
#SBATCH -p hpc-bio-ochoa
#SBATCH --chdir=/home/alumno12/lab3-container/data/
#SBATCH -J kmers

module load singularity/3.7.0
echo
echo "Utilizando la imagen de Singularity:"
echo "Tiempo para longitud 13:"
echo "Con Python:"
time singularity exec ../singularity/python_latest.sif ./k-mer13.py &
wait
echo
echo "Con C++:"
time singularity exec ../singularity/python_latest.sif ./k-mer13 &
wait
echo
echo "Tiempo para longitud 14:"
echo "Con Python:"
time singularity exec ../singularity/python_latest.sif ./k-mer14.py &
wait
echo
echo "Con C++:"
time singularity exec ../singularity/python_latest.sif ./k-mer14

