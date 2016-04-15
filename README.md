# download-youtube-channel-hq


Okay, so here's how this thing works:

<sudo> bash script.sh -u <youtube channel URL> -d <directory to download the videos to>

the -d flag is just the directory to which you want to download the videos.
You don't need a trailing slash, but it won't really matter.

the -u flag takes urls in the format of

https://www.youtube.com/channel/channelID

or

https://www.youtube.com/user/username

i.e.

https://www.youtube.com/channel/UC-29noNLkfOOA-LvNmaXoiA

or

https://www.youtube.com/user/thesqrtminus1


The reason I chose to allow channel IDs is because not every YouTube channel has chose to make a custom url as a username.
Some people just leave it at the default, which means that their channel is only accessible via the URL with a channel ID in it.
Which is annoying.
You can NOT use https://www.youtube.com/username yet, because I'm still working on that functionality.
And also because I literally just discovered that every channel can be accessed via youtube.com/username.
While writing this readme.
Whoops.


BUGS:

```
                      .-.
                     ()I()
                "==.__:-:__.=="
               "==.__/~|~\__.=="
               "==._(  Y  )_.=="
    .-'~~""~=--...,__\/|\/__,...--=~""~~'-.
   (               ..=\=/=..               )
    `'-.        ,.-"`;/=\ ;"-.,_        .-'`
        `~"-=-~` .-~` |=| `~-. `~-=-"~`
             .-~`    /|=|\    `~-.
          .~`       / |=| \       `~.
      .-~`        .'  |=|  `.        `~-.
    (`     _,.-="`    |=|    `"=-.,_     `)
     `~"~"`           |=|           `"~"~`
                      |=|
                      |=|
                      |=|
                      /=\



                 \   / 
                 .\-/. 
             /\  () ()  /\ 
            /  \ /~-~\ /  \ 
                y  Y  V 
          ,-^-./   |   \,-^-.
         /    {    |    }    \
               \   |   / 
               /\  A  /\ 
              /  \/ \/  \ 
             /           \


       / .'
 .---. \/
(._.' \()
 ^"""^"


```
