#!/bin/bash
#
# Plugin to check server time zone
# Usage: check_timezone.sh "Timezone"
#


if [ $1 ]
then
        expected_tzone=$1
else
        expected_tzone="UTC"
fi

tzone=`date +%Z`
if [ $tzone == $expected_tzone ]
then
        echo "TIMEZONE OK $tzone"
        exit 0
else
        echo "TIMEZONE CRITICAL $tzone"
        exit 2
