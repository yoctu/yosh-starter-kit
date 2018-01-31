#!/bin/bash

# main file

# source all lib's
source /usr/lib/yosh/autoloader.sh

# get GET and POST and COOKIE variable
http::read::get
http::read::post
http::read::cookie

# redirect stdout and stderr of function to file, to print after
tmpStdout="$(mktemp)"
tmpStderr="$(mktemp)"

# Clean TMP file on exit
trap "rm $tmpStdout; rm $tmpStderr" EXIT

# Save stdout and stderr to a file, to print out the both
route::check 1>$tmpStdout 2>$tmpStderr

# Send header
http::send::out

# send data from route
[[ -s "$tmpStdout" ]] && cat $tmpStdout
[[ -s "$tmpStderr" ]] && cat $tmpStderr

# exit like a pro
exit
