#!/bin/bash
desc=$( date '+%F_%H:%M:%S' )
wget -O /home/wartung/blocklist/SouIsAs.github.io/hosts https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts
sed -i '/reddit/d' /home/wartung/blocklist/SouIsAs.github.io/hosts
sed -i '/redd.it/d' /home/wartung/blocklist/SouIsAs.github.io/hosts
sed -i '/pinpages/d' /home/wartung/blocklist/SouIsAs.github.io/hosts
sed -i '/allotalk/d' /home/wartung/blocklist/SouIsAs.github.io/hosts
cd /home/wartung/blocklist/SouIsAs.github.io/
git add --all
git commit -m "$desc"
git push -u origin master
