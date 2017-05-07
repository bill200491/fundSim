#!/bin/sh

cd $1
rm -rf cloud.last emuRlt cloud.new cloud.old cloud.slv 
rm -rf slvRlt slvRlt.old slvRlt.new $2.log $3.log
cp -r cloud cloud.last


bzip2 -dc ../../simRlt/mutual/$2 | tar xvf - > $2.log
rm -rf slvRlt/*.log
mkdir cloud.new
cp slvRlt/*.dat cloud.new/
mv slvRlt slvRlt.new

bzip2 -dc ../../simRlt/mutual/$3 | tar xvf - > $3.log
rm -rf slvRlt/*.log
mkdir cloud.old
cp slvRlt/*.dat cloud.old/
mv slvRlt slvRlt.old


mkdir slvRlt emuRlt
screen_mdl06.py  simList.json jpmorgan fast || exit 1
mkdir cloud.slv
cp slvRlt/*.dat cloud.slv

# cd ../
# git config --global user.email "aphou6866@gmail.com"
# git config --global user.name "Elliot Hou, Ao-ping"
# git commit -m "Commit for `date`" .
# git push

echo "All report FINISHED"
echo "All report FINISHED"
echo "All report FINISHED"
