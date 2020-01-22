for i in *.pdf; do
convert "$i" -resize 800 -background white -alpha background -alpha off -compress zip +adjoin "${i%%.pdf}.png";
done
