@echo off
REM mp4
%~dp0\ffmpeg\bin\ffmpeg -i %1 -b 1000k -vcodec libx264 -s 640x360 %~dpn1.html5.mp4
REM webm
%~dp0\ffmpeg\bin\ffmpeg -i %1 -b 1000k -vcodec libvpx -acodec libvorbis -ab 128000 -s 640x360 %~dpn1.html5.webm
REM jpeg (screenshot at 10 seconds)
%~dp0\ffmpeg\bin\ffmpeg -i %1 -ss 00:05 -vframes 1 -r 1 -s 640x360 -f image2 %~dpn1.html5.jpg
pause