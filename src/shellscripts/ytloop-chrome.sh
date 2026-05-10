#!/bin/bash
# youtube-dl loop.
# Loop until every video is downloaded.
# Pass file with url list as argument.

RET=1
until [ ${RET} -eq 0 ]; do
    yt-dlp -a $1 --cookies-from-browser chrome
    RET=$?
    sleep 2
done
