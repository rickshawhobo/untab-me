#!/usr/bin/env bash

# For irony I've indented this file with tabs

if [ -z "$1" ]
	then
		echo "Usage example: untab-me.sh *.php to replace tabs with 4 spaces from all files ending in .php"
else
	find . -name "${1}" ! -type d -exec bash -c 'expand -t 4 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
fi
