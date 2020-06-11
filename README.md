This repo contains analytics for the Yoga-82 dataset and a script to download the images from each txt file. 

In foo there are png files containing class imbalance and resolution histograms, along with the get_imagedata.py which has the script that wrote these plots.

In yoga_dataset_links there is my runner script, and shells to parallel download the images from all 82 yoga classes. aa.sh contains the full list of txt files to read, but I ran ab.sh with ~10 links at a time so I could check for errors. 