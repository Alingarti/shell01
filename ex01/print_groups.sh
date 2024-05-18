#!/bin/bash
id -Gn $FT_USER | tr -d '\n' | tr ' ' ','
