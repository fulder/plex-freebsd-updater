#!/usr/bin/env bash

fetch https://plex.tv/pms/downloads/5.json
download_url=$(cat 5.json | jq -r '.computer.FreeBSD.releases[0].url')
version=$(cat 5.json | jq -r '.computer.FreeBSD.version')
rm 5.json

echo "Downloading plex server with version: ${version}"
fetch "${download_url}"

echo "Unpacking zip"
tar xzf "PlexMediaServer-${version}-FreeBSD-amd64.tar.bz2"

echo "Updating current plex"
pkill -9 "Plex*"
rm -rf PlexMediaServer
mv "./PlexMediaServer-${version}" PlexMediaServer
rm "PlexMediaServer-${version}-FreeBSD-amd64.tar.bz2"

cd PlexMediaServer
./start.sh
cd ..

