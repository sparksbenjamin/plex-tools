list=`find $1 -name "*.mkv"`
for file in $list
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  video_file="${filename%.*}"
  ffmpeg -i $filename -c:a aac -c:v copy $video_file;
done
