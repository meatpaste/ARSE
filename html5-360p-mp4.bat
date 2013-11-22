@echo off
REM mp4
%~dp0\ffmpeg\bin\ffmpeg -i %1 -b 1000k -vcodec libx264 -s 640x360 %~dpn1.html5.mp4
pause