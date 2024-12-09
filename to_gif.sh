#! /bin/bash
while IFS=\= read var value; do
    ignorepaths+=($var)
done < gif_ignore
for file_path in iCloud/Frame/*.MOV; do
    file_name=$(basename ${file_path})
    output_file="iCloud/gif/Frame/$file_name.gif";
    if [ -f $output_file ]; then
        echo "File $file_name already exists"
    elif [[ ! " ${ignorepaths[*]} " =~ [[:space:]]${file_name}[[:space:]] ]]; then
        ./ffmpeg -i $file_path -pix_fmt rgb8 -r 20 $output_file && gifsicle -O2 $output_file -o $output_file;
    fi
done
