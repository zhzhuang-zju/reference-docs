#!/bin/bash

# generate api document
make

# delete all the carriage Return (CR)
sed -i 's/\r//g' `find kwebsite -name "*.md"`
# remove the redundant linefeed (LF)
sed -i '/^$/N;/^\n$/D' `find kwebsite -name "*.md"`
