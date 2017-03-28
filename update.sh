#!/bin/bash

VERSION=1.130

wget http://ftp.debian.org/debian/pool/main/n/netcat-openbsd/netcat-openbsd_$VERSION.orig.tar.gz || exit 1
wget http://ftp.debian.org/debian/pool/main/n/netcat-openbsd/netcat-openbsd_$VERSION-3.debian.tar.xz || exit 2

tar -xzvf netcat-openbsd_$VERSION.orig.tar.gz || exit 3
tar -xJvf netcat-openbsd_$VERSION-3.debian.tar.xz  || exit 4

cd netcat-openbsd-$VERSION
for i in `cat ../debian/patches/series`; do
  echo "** patch $i" 1>&2
  cat "../debian/patches/$i"
done | patch -p1
