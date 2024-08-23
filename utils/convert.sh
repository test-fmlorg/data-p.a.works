#!/bin/sh

perl -nple 's/\s*//g;' data/titles.csv					|
awk -F , '{printf("\t      [\"%s\",\"%s\",\"%s\"],\n", $1, $2, $3)}' 

exit 0
