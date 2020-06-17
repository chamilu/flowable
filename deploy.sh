#!/bin/sh

url=http://localhost:8388/flowable-modeler

echo "\n\nStarting containers...\n"
docker-compose up -d

echo "\nWaiting..."
while [ "$(curl -s -o /dev/null -w %{http_code} $url)" != 302 ]; do
    sleep 1
done

echo "\n\nOpen modeler: $url"
