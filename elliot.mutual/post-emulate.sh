#!/bin/sh

cd $1

rm -rf cloud
# cp -r ../cloud .
morn-mutual-update.py simList.json jpmorgan || exit 1


rm -rf report.del
mv report.bak report.del
cp -r report report.bak
cp emuRlt/*.png report/
reportE_mdl06.py ../fundList.json jpmorgan $1

# cd ../
# git config --global user.email "aphou6866@gmail.com"
# git config --global user.name "Elliot Hou, Ao-ping"
# git commit -m "Commit for `date`" .
# git push

echo "All report FINISHED"
echo "All report FINISHED"
echo "All report FINISHED"
