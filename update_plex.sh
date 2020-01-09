#!/usr/bin/env bash

version=1.18.4.2171-ac2afe5f8

echo "Downloading plex server with version: ${version}"
wget "https://downloads.plex.tv/plex-media-server-new/${version}/freebsd/PlexMediaServer-${version>

echo "Unpacking zip"
tar xzf "PlexMediaServer-${version}-FreeBSD-amd64.tar.bz2"

echo "Updating current plex"
rm -rf PlexMediaServer
mv "./PlexMediaServer-${version}" PlexMediaServer

#Cleanup
rm "PlexMediaServer-${version}-FreeBSD-amd64.tar.bz2"
