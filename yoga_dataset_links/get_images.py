import requests
import os 
import numpy as np
import argparse
import time

parser = argparse.ArgumentParser(description='Get some images.')
parser.add_argument('--input',
                    help='add an input file')
parser.add_argument('--output',
                    help='output directory to put files in')

args = parser.parse_args()

print(f'input is {args.input}')

path = args.input
f = open(path, 'r')
content = f.read().split('\n')
for j in np.arange(0,len(content)):
    header = content[j].split(',')[0] #'class/number.jpg'
    img_url = content[j].split(',')[1]
    yoga_class_dir = header.split('/')[0] #yoga class
    img_title = header.split('/')[1] #number.jpg
    try:
        dir_path = os.path.join(os.getcwd(), args.output, yoga_class_dir)
        os.mkdir(dir_path)
    except:
        pass
    try:
        r = requests.get(img_url)
        with open(dir_path + '/' + img_title, 'wb') as g:
            g.write(r.content)
    except:
        pass
    time.sleep( 1 )
f.close()