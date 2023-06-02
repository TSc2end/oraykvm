#!/bin/sh

busybox --install

cd "$(dirname "$0")"
cd upfw1.4.0-squashfs-root

busybox mount --bind /dev dev
busybox mount -t devpts devpts dev/pts
busybox mount -t proc proc proc
busybox mount -t sysfs sysfs sys

export HOME=/root

exec busybox chroot . /bin/sh

