#!/usr/bin/env bash

./recommendation/getUserRecommendations.sh 8888 index_0 99 | json_pp | grep item_id | grep -o -E "[0-9]+" | while read line ; do cat ../../movielens/ml-100k/u.item | grep -E "^$line\|"; done

