#!/usr/bin/env bash

ID=${1:-"99"}
./action/getUserAction.sh 8888 index_0 ${ID} | json_pp | grep "\"item_id\"" | cut -d":" -f2 | sed -e 's/\s//g' -e 's/\"//g' -e 's/\,$//g' | while read line; do ./item/getItems.sh 8888 index_0 $line | json_pp ; done 2> /dev/null

