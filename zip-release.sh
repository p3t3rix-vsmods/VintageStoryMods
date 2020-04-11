#!/bin/bash
cd release
for folder in *
do
  cd $folder
  zip -r ../$folder.zip *
  cd ..
done