1) configure the model with

ln -s ${cur_dir}/mods/ModSize.f90 ${cur_dir}/src/ModSize.f90
./Config.pl -install -mars -compiler=gfortran,gcc\_mpicc

2) Edit Makefile.conf

Add "-fPIC" to Cflag3


3) build the model

make -j8
