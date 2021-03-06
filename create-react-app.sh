#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-react-app" "$1"
includeRepository "create-react-app"
includeSass "src/sass"
install "."
endCreateScript