#! /bin/bash

cur_dir=`pwd`
ln -s ${cur_dir}/mods/ModSize.f90 ${cur_dir}/src/ModSize.f90
./Config.pl -install -mars -compiler=gfortran,gcc\_mpicc
