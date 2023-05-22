#!/bin/sh
#Alireza
sudo apt-get install curl unzip perl &
wait
sudo apt-get install xtables-addons-common &
wait
sudo apt-get install libtext-csv-xs-perl libmoosex-types-netaddr-ip-perl &
wait
sudo mkdir /usr/share/xt_geoip
wait
MON=$(date +"%m")
YR=$(date +"%Y")

wget https://download.db-ip.com/free/dbip-country-lite-${YR}-${MON}.csv.gz -O /usr/share/xt_geoip/dbip-country-lite.csv.gz
gunzip /usr/share/xt_geoip/dbip-country-lite.csv.gz
/usr/lib/xtables-addons/xt_geoip_build -D /usr/share/xt_geoip/ -S /usr/share/xt_geoip/
rm /usr/share/xt_geoip/dbip-country-lite.csv
clear
printf "\n Download Success GEOIP Library  \n"