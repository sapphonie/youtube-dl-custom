# download-youtube-channel-hq


Okay, so here's how this thing works:

##USAGE:
```
bash script.sh -u -d (-n)

-u <youtube channel/video/playlist url> 
-d <directory to download the videos to>
-n <uploader and id> (formatted "uploader{uploaderid}") [optional]
```
This script will download all videos from url <-u> into directory <-d>/uploader{uploader_id} OR <-d><-n>



##BUGS:

(05/31/16)
You can NOT run multiple versions of this script to the same directory at the same time. Although this is more of a bug with youtube-dl, but, whatever


##CHANGELOG:

~~fuck you~~

(05/31/16)
* Made a changelog
* updated postprocessor args and youtube-dl ffmpeg stuff to get the highest quality possible (for me, at least)

