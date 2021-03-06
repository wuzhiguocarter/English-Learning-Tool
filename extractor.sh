# Tomi Mester@original
DIR=subtitles/himym
cat ${DIR}/s02/* |
# cat ${DIR}/s01/* ${DIR}/s02/* ${DIR}/s03/* ${DIR}/s04/* |
# deta cleanning
grep -v '^[0-9]' |
sed 's/[?!.|]/ /g' |
sed 's/ * / /g' |
sed "s/[^A-Za-z\' ]//g" |
sed 's/^ //g' |
sed 's/ /\n/g' |
sed '/^$/d' |
sed -e 's/\(.*\)/\L\1/' |
# sort and extract
sort |
uniq -c |
sort -rn |
sed -e 's/^[ \t]*//' |
head -1000 > output/himym-s02-1000.csv

## analysis: 80/20 rules verification
# awk ‘{sum +=$1} END {print sum}’
# awk ‘{sum +=$1} END {print sum}’ himym-1000.csv