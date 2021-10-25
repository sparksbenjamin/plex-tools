list=`find $FILE_PATH -name "*.mkv"`
for file in $list
do
  filename=$(basename "$file")
  extension="${filename##*.}"
  video_file="${filename%.*}"
  fqfn = realpath $file
  ffmpeg -i $fqfn -c:a aac -c:v copy output.m4a $(fqfn%.*}.mp4";
done
