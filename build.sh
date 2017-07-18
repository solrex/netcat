#!/bin/bash

# Where do you want to put nc in to
PREFIX=/usr/local
# Your libbsd dev lib install path
BSD_LIBRARY_PATH=/lib/x86_64-linux-gnu
BSD_INCLUDE_PATH=/usr/include

make CFLAGS="-g -O2 -I$BSD_INCLUDE_PATH" LIBS="-lresolv -L$BSD_LIBRARY_PATH -lbsd"

if [ "$1" == "install" ]; then
  install -Dm0755 nc $PREFIX/bin/nc
  ln -s nc $PREFIX/bin/netcat
  install -Dm0644 nc.1 $PREFIX/share/man/man1/nc.1
fi
