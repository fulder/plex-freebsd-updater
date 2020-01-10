#!/usr/bin/env bash

version=1.18.4.2171-ac2afe5f8

echo "Downloading plex server with version: ${version}"
fetch "https://downloads.plex.tv/plex-media-server-new/${version}/freebsd/PlexMediaServer-${version}-FreeBSD-amd64.tar.bz2"

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

