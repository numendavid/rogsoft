#!/bin/sh

MODULE="shellinabox"
VERSION="1.4"
TITLE="shellinabox"
DESCRIPTION="超强的SSH网页客户端，webshell替代品~"
HOME_URL="Module_shellinabox.asp"

# Check and include base
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$MODULE" == "" ]; then
	echo "module not found"
	exit 1
fi

if [ -f "$DIR/$MODULE/$MODULE/install.sh" ]; then
	echo "install script not found"
	exit 2
fi

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# do something here

do_build_result
