#!/bin/bash

echo "Compiling set"
../roadie/roadie.exe set_disabler.json

echo "Compiling NML"
../nml/nmlc.exe -c Wolfies_Deconflicting_Disabler.nml

echo "Building TAR"
mkdir -p Wolfies_Deconflicting_Disabler
mv *.grf Wolfies_Deconflicting_Disabler
cp grf_readme/disabler/* Wolfies_Deconflicting_Disabler
tar -c Wolfies_Deconflicting_Disabler > Wolfies_Deconflicting_Disabler.tar
