#!/bin/sh

DISTROS="${*:-kali-rolling}"

echo "Building images for $DISTROS"
for distro in $DISTROS; do
    ./build-rootfs.sh $distro
    ./docker-build.sh $distro
    ./docker-push.sh $distro
done
