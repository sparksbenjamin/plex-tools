list=`find $FILE_PATH -name "*.mkv"`
for file in $list
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  video_file="${filename%.*}"
  ffmpeg -i $dir/${filename} -c:a libfdk_aac -vbr 3 output.m4a "$dir/${filename%.mp4}-%03d.m4a";
done
