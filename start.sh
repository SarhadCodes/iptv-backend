#!/bin/sh
chmod +x pocketbase
./pocketbase serve \
  --http=0.0.0.0:10000 \
  --admin-email=admin@iptv.local \
  --admin-password=Admin12345


