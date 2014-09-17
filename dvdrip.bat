@echo off
REM mp4
%~dp0\ffmpeg\bin\ffmpeg -i %1 -c:v libx264 -deinterlace -crf 18 -c:a copy %1.converted.mp4
pause