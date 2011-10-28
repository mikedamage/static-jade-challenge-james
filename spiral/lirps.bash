#!/bin/bash
# EXPORTED FROM TOP LEVEL $dir_script;
gawk -f $dir_script'/lirps.awk' $1;
