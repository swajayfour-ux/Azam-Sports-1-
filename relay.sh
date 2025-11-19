mkdir -p ./stable

ffmpeg -i "http://app-v15-dream4k.info/live/kmkfnsxdy7/leeuiizlbn/262957.ts" \
-c:v libx264 -b:v 1500k -maxrate 1500k -bufsize 3000k -s 1280x720 -c:a aac -f hls \
./stable/720p.m3u8 \
-c:v libx264 -b:v 800k -maxrate 800k -bufsize 1600k -s 854x480 -c:a aac -f hls \
./stable/480p.m3u8 \
-c:v libx264 -b:v 400k -maxrate 400k -bufsize 800k -s 640x360 -c:a aac -f hls \
./stable/360p.m3u8
