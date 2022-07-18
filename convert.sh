cd IMG/
for i in *.svg;
do
NAME=`echo "$i" | cut -d'.' -f1`;
rsvg-convert -f pdf -o ../"$NAME".pdf "$NAME".svg
inkscape "$NAME".svg --export-png=../Export/"$NAME".png --export-width=1000
done
