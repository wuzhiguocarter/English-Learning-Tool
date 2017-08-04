#CMDLIST="env set cat grep sed awk sort head"
CMDLIST=$1
echo "...creating manual for the following command"
echo  $CMDLIST
for cmd in $CMDLIST
do
man $cmd >> man_$cmd.md
done
mkdir -p doc/
mv *.md doc/

echo
echo "...comand manual list"
cat doc/* > doc/all.mdi
ls -CF doc/
