for file in \
 Split_pose.txt
do
  echo "Running: python get_images.py --input=$file"
  python get_images.py --input=$file --output=../foo 1>../log/in-$file.log 2>../log/er-$file.log &
done
