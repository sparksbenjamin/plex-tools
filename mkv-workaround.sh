list=`find $FILE_PATH -name "*.mkv"`
for file in $list
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  video_file="${filename%.*}"
  #output_video_file="${filename%.*}"
  #echo $output_video_file
  echo "ffmpeg -i $filename -c:a aac -c:v copy output.m4a "$(fqfn%.*}".mp4";
done
