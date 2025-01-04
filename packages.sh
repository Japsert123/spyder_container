#!/bin/sh
if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
    echo "Running apt-get update..."
    apt-get update -y
fi
cat ./packages/list.packages | xargs apt-get -y install --no-install-recommends