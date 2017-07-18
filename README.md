# netcat

Merged Debian port of the OpenBSD rewrite of netcat(nc), including support for IPv6, proxies, and Unix sockets.

Because GNU netcat doesn't support `-x` proxy option, it is hard to use ssh ProxyCommand `nc -x localhost:1080 %h %p` on an **ancient** linux distribution such as **CentOS 4.3**. Debian has ported the OpenBSD rewrite of netcat to Linux. It is a little complicated to use or find the source code, so here I created this repo.

# Usage

1. Modify `build.sh` PREFIX

``` bash
# Where do you want to put nc in to
PREFIX=/usr/local
# Your libbsd dev lib install path
BSD_LIBRARY_PATH=/lib/x86_64-linux-gnu
BSD_INCLUDE_PATH=/usr/include
```

2. Then

``` bash
$ bash ./build.sh
```
