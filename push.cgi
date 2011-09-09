#!/bin/sh

# PotBliki, Plain Text Bliki Tools.
# Copyright (C) 2011 Daniel Hjort
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

. ./push_conf

echo "204 No Content"

date >> potbliki.log
echo "Pulling changes..." >> potbliki.log

cd $BLIKI_DIR
git pull
$POTBLIKI_PATH/potbliki make
