#!/bin/bash
. ./autotest/print_err.sh
. ./autotest/ERRORS_KEYS.sh

PARCEL=$(npm run | grep "start" -A1 | grep "parcel")
if [[ -z $PARCEL ]]
then
	print_err $PARCEL_ERR
	exit 0
fi

exit 0