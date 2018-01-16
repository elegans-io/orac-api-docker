#!/usr/bin/env bash

ID=${1:-"99"}
cat ../../movielens/ml-100k/u.data | grep -E "^${ID}\s" | cut -d$'\t' -f2 | while read line; do cat ../../movielens/ml-100k/u.item | grep -E "^$line\|"; done

