#!/bin/bash
while getopts :c:h:m: option
do
	case "${option}"
		in
			c) ChannelName=${OPTARG};;
			h) echo "-c for channel name"
				exit 1;;
			m) MP4=${OPTARG};;
			\?) echo "that's not a flag, you dope."
				exit 1;;

	esac
done

if [[ $ChannelName == "" ]] ;
	then
		echo "You need to input a channel name, dumbass."
		exit 1
	else
		youtube-dl -iw --no-continue ytuser:$ChannelName --download-archive $ChannelName/archive.txt --add-metadata -f bestvideo+bestaudio --merge-output-format mkv -o $ChannelName/"[%(upload_date)s] %(title)s"

		if [[ $MP4 == "1" ]];
					then
cd $ChannelName || exit
	for f in ./*.mkv; do
		touch -r "$f" "${f%.mkv}".attributes
		ffmpeg -i "$f" -c:v libx264 -crf 18 -preset veryslow -strict experimental -c:a aac -movflags +faststart "${f%.mkv}.mp4"
		rm -rf "$f"
		touch -r "${f%.mkv}".attributes "${f%.mkv}.mp4"
		sudo rm -rf "${f%.mkv}".attributes;
	done
exit 0
	else
		exit 0
	fi
fi

