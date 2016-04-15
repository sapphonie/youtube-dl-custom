#!/bin/bash
while getopts :u:h:d: option
do
        case "${option}"
                in
                        u) URL=${OPTARG};;
                        h) echo "-c for channel name"
                                exit 1;;
			d) DIR=${OPTARG};;
                        \?) echo "that's not a flag, you dope."
                                exit 1;;

        esac
done


if [[ $URL == "" || $DIR == "" ]] ;
        then
                echo "You need to input a URL and a directory to which to download, numbnuts."
                exit 1
        else

echo "You entered: $URL for the URL"
sleep 1
foo="$(echo $URL | grep 'user\/.*\|channel\/.*' -o | cut -b 1-100)"
echo "foo=$foo"
echo "Now downloading all videos from URL "$URL" to the folder "$DIR/$foo""

cd $DIR || mkdir -p $DIR && cd $DIR
cd $foo || mkdir -p $foo && cd $foo

youtube-dl -iw \
--no-continue $URL \
-f bestvideo+bestaudio --merge-output-format mkv \
-o "%(uploader)s{%(uploader_id)s}:[%(upload_date)s] %(title)s" \
--add-metadata --download-archive archive.txt


fi


#cd $ChannelName
#for f in ./*.mkv; do
#touch -r "$f" "${f%.mkv}".attributes
#ffmpeg -i "$f" -c:v libx264 -crf 18 -preset medium -strict experimental -c:a aac -movflags +faststart "${f%.mkv}.mp4"
#rm -rf "$f"
#touch -r "${f%.mkv}".attributes "${f%.mkv}.mp4"
#sudo rm -rf "${f%.mkv}".attributes;
#done
exit 0
