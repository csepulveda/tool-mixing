#!/bin/bash

#Download 10,000 Days
youtube-dl --extract-audio --audio-format mp3 "https://www.youtube.com/watch?v=qJq9y9xPKWs" --output "10000Days.%(ext)s"
#Download Viginti Tres
youtube-dl --extract-audio --audio-format mp3 "https://www.youtube.com/watch?v=flRx55ucBlQ" --output "VigintiTres.%(ext)s"
#Download Wings For Marie
youtube-dl --extract-audio --audio-format mp3 "https://www.youtube.com/watch?v=BNTo34xOwoM" --output "WingsForMarie.%(ext)s"

#cur VigintiTres empty end
ffmpeg -y -i VigintiTres.mp3 -t 302.37 -acodec mp3 VigintiTres_done.mp3
#Concat Viginti Tres + Wings For Marie
ffmpeg -y -i "concat:VigintiTres_done.mp3|WingsForMarie.mp3" -acodec mp3 VigintiTresWingsForMarie.mp3

#Merge 10,000 Days and (Viginti Tres + Wings For Marie)
ffmpeg -y -i 10000Days.mp3 -i VigintiTresWingsForMarie.mp3 -filter_complex amix=inputs=2:duration=first TOOL.mp3

#Cleaning up
rm 10000Days.mp3 VigintiTres.mp3 WingsForMarie.mp3 VigintiTresWingsForMarie.mp3