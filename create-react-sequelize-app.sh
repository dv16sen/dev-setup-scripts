#!/usr/bin/env bash
SCRIPT_FOLDER=$(dirname $(readlink -f $0))
. "$SCRIPT_FOLDER/lib/create-app-script.sh"

startCreateScript "create-react-sequelize-app" "$1"
includeRepository "create-react-app" "client"
includeRepository "sequelize-typescript-express"
includeSass "client/src/sass"
install "."
runNodeScript "setupClientServer.ts" $1
install "client"
endCreateScript