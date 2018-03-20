#!/bin/bash

echo "Reversing /etc/hosts";
HOSTS=/etc/hosts;
TMP=tmpsedscrp;
sed "/# BEGIN SELF/,/# END SELF/d" $HOSTS > $TMP;
mv $TMP $HOSTS;
