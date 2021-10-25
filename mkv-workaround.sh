list=`find $FILE_PATH -name "*.mkv"`
for file in $list
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  video_file="${filename%.*}"
  output_video_file="${filename%.*}" + ".mp4"
  #fqfn = realpath $file
  #output = "${fqfn%.*}"
  #output=$video_file + ".mp4"
  echo $output_video_file
  #ffmpeg -i $fqfn -c:a aac -c:v copy output.m4a "$(fqfn%.*}".mp4;
done
