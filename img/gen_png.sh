for i in *.pdf; do
convert "$i" -resize 400 -background white -alpha background -alpha off -compress zip +adjoin "${i%%.pdf}.png";
done
