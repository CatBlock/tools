#!/bin/bash

# Make a "cb_download" folder, which contains a clone of CB repository
# If the folder already exists, remove it
path="cb_download"

rm -rf $path

mkdir $path
cd $path

# Clone CB repository
git clone https://github.com/CatBlock/catblock.git

cd catblock

# Checkout the latest tag
latest_tag=$(git describe --tags $(git rev-list --tags --max-count=1))

git checkout tags/$latest_tag

# Save the latest tag to the file for debug info
echo $latest_tag > ../latest.txt