#!/usr/bin/env sh

set -e
dist="./build/dist"

cd "$(dirname "$0")"

if [ -d "$dist" ]; then
  rm -r "$dist"
fi

PKGDEST="$dist" makepkg -si
