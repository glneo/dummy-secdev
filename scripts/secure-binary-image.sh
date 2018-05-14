#!/bin/sh

function fn_display_usage {
	echo "Error: $1"
	echo ""
	echo "This script is used to secure a binary blob for the default platform."
	echo ""
	echo "Usage: secure-binary-image.sh <input-file-name> <output-file-name>"
	echo ""
	exit 1
}

# validate input parameter
if [ $# -lt 2 ]
then
	fn_display_usage "missing parameter"
fi

echo ""
echo "Warning! This is a dummy signing tool, it is meant for build testing only."
echo "This will NOT produce an image that is bootable on HS devices!"
echo ""

cp $1 $2
