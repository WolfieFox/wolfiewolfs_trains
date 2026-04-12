#!/bin/bash

# Create directories
mkdir -p intermediate
mkdir -p intermediate/hills

# Copy static files
echo "Copying static files"
cp -p voxels/static/carriage/* intermediate

# Do sprite creation
echo "Compositing hill sprites"
../cargopositor/cargopositor.exe -o intermediate/hills -v intermediate -t positor/second/*

echo ""
echo "Rendering regular sprites"
ls intermediate/*.vox | xargs ../gorender/renderobject.exe -8 -r -s 2,1 -u -p 

echo ""
echo "Rendering section sprites"
ls intermediate/*.vox | xargs ../gorender/renderobject.exe -8 -m files/manifest_sections.json -p -r -x _sections -s 2,1 -u

echo ""
echo "Rendering hill sprites"
ls intermediate/hills/*.vox | xargs ../gorender/renderobject.exe -8 -m files/manifest_hill.json -p -r -s 2,1 -u

echo ""
echo "Rendering purchase sprites"
../purchaser/purchaser.exe table_speedpatch.csv

echo "Compiling set"
../roadie/roadie.exe set_speedpatch.json

echo "Compiling NML"
../nml/nmlc.exe -c SpeedPatch.nml

echo "Building TAR"
mkdir -p SpeedPatch
mv *.grf SpeedPatch
#cp grf_readme/community2/* SpeedPatch
tar -c SpeedPatch > SpeedPatch.tar
