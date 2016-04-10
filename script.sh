#!/bin/bash
echo "Please enter the name of the channel you wish to download:"
read ChannelName
echo "You entered: $ChannelName for the channel"
sleep .000001
echo "Now downloading all videos from Channel "$ChannelName" (if it exists!)"
youtube-dl -iw --no-continue ytuser:$ChannelName --download-archive $ChannelName/archive.txt --add-metadata -f bestvideo+bestaudio --merge-output-format mkv -o $ChannelName/"[%(upload_date)s] %(title)s"
#cd $ChannelName
#for f in ./*.mkv; do
#touch -r "$f" "${f%.mkv}".attributes
#ffmpeg -i "$f" -c:v libx264 -crf 18 -preset medium -strict experimental -c:a aac -movflags +faststart "${f%.mkv}.mp4"
#rm -rf "$f"
#touch -r "${f%.mkv}".attributes "${f%.mkv}.mp4"
#sudo rm -rf "${f%.mkv}".attributes;
#done
exit 0

