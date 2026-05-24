#!/bin/bash

echo "Compiling set"
../roadie/roadie.exe set.json
echo "Compiling NML"
../nml/nmlc.exe --no-palette-validation -p DEFAULT -c unified.nml

echo "Building TAR"
mkdir -p wuut
mv *.grf wuut
cp grf_readme/regular/* wuut
tar -c wuut > wuut.tar