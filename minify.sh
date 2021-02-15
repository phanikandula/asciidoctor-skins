#!/usr/bin/env bash

target_dir=css-min
rm -rf $target_dir
mkdir $target_dir

for filename_with_suffix in `find css -name '*.css'`; 
do 
	filename=`basename ${filename_with_suffix} .css`; 
	minified_filename="${filename}.min.css"
	wget --quiet --post-data="input=`cat ${filename_with_suffix}`" --output-document=${target_dir}/${minified_filename} https://cssminifier.com/raw

done;
