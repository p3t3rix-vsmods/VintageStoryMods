#!/bin/bash
cd bin
for folder in *
do
  cd $folder
  zip -r ../$folder.zip *
  cd ..
done