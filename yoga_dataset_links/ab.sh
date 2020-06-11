for file in \
 Virasana_or_Vajrasana.txt \
 Warrior_III_Pose_or_Virabhadrasana_III_.txt \
 Warrior_II_Pose_or_Virabhadrasana_II_.txt \
 Warrior_I_Pose_or_Virabhadrasana_I_.txt \
 Wide-Angle_Seated_Forward_Bend_pose_or_Upavistha_Konasana_.txt \
 Wide-Legged_Forward_Bend_pose_or_Prasarita_Padottanasana_.txt \
 Wild_Thing_pose_or_Camatkarasana_.txt \
 Wind_Relieving_pose_or_Pawanmuktasana.txt \
 Yogic_sleep_pose.txt \
 viparita_virabhadrasana_or_reverse_warrior_pose.txt 
do
  echo "Running: python get_images.py --input=$file"
  python get_images.py --input=$file --output=../foo 1>../log/in-$file.log 2>../log/er-$file.log &
done
