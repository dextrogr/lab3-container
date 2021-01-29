#!/bin/bash
#SBATCH -p hpc-bio-ochoa
#SBATCH --chdir=/home/alumno12/lab3-container/data/
#SBATCH -J kmers

echo "Tiempo para longitud 13:"
echo "Con Python:"
time ./k-mer13.py &
wait
echo
echo "Con C++:"
time ./k-mer13 &
wait
echo
echo "Tiempo para longitud 14:"
echo "Con Python:"
time ./k-mer14.py &
wait
echo
echo "Con C++:"
time ./k-mer14

