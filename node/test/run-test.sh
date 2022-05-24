#!/usr/bin/env bash
FOLDER=$(dirname "$0")
echoStart() { echo "# 🚀 $1"; }
echoSuccess() { echo "# ✅ $1"; }
die() { echo "$2" >&2; exit "$1"; }
try() { ( set -x; "$@"; ); ret="$?"; (( "$ret" == 0 )) || die 3 "Error while calling '$*' ($ret)"; }

# APP BUILD

echoStart "Preparing app..."

try docker-compose --file "$FOLDER/docker-compose-migrations.yml" up -d

echoSuccess "Preparing app done"

