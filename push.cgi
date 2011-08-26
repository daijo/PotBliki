#!/bin/sh

. ./push_conf

echo "204 No Content"

date >> potbliki.log
echo "Pulling changes..." >> potbliki.log

cd $BLIKI_DIR
git pull
$POTBLIKI_PATH/potbliki make
