#!/bin/bash
cat /etc/passwd \| grep -v '^#' \| sed -n '2~2p' \| cut -d':' -f1 \| rev \| sort -r \| awk 'NR >= ENVIRON["FT_LINE1"] && NR <= ENVIRON["FT_LINE2"]' \| tr '\n' ', ' \| sed 's/, $/./'
