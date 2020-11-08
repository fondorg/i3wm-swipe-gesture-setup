#!/usr/bin/env bash

DIRECTION=$1
CURRENT=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)

MIN=$(i3-msg -t get_workspaces | jq '.[0].num')
if [ $CURRENT -eq $MIN ] && [ $DIRECTION = "prev" ]; then
	exit 0
fi

MAX=$(i3-msg -t get_workspaces | jq '.[-1].num')
if [ $CURRENT -eq $MAX ] && [ $DIRECTION = "next" ]; then
	exit 0
fi

i3-msg workspace $DIRECTION
