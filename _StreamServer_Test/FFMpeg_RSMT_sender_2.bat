ffmpeg -re -f lavfi -i testsrc=size=640x360:rate=30 -f lavfi -i sine -vf drawtext="text='%{localtime}:test222':fontsize=20:fontcolor=white:x=7:y=7" -vcodec libx264 -vb 2000k -preset ultrafast -x264-params keyint=60 -acodec aac -f flv "rtmp://10.10.17.253/live/33333333"