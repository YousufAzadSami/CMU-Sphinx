i=0
for dir in /home/sami-mint/Desktop/*; do
    echo $dir;
    fileList[ $i ] = "$dir"
    (( i++ )
done

echo ${fileList[1]}