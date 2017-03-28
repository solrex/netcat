#!/bin/bash

# Where do you want to put nc in to
PREFIX=/usr/local
# Your libbsd install prefix
BSD_PREFIX=/usr/local

make CFLAGS="$CFLAGS -I$BSD_PREFIX/include" LDFLAGS="$LDFLAGS -lbsd -L$BSD_PREFIX/lib"

if [ "$1" == "install" ]; then
  install -Dm0755 nc $PREFIX/bin/nc
  ln -s nc $PREFIX/bin/netcat
  install -Dm0644 nc.1 $PREFIX/share/man/man1/nc.1
fi
