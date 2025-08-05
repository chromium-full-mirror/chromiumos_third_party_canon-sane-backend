#!/bin/bash

chmod -R 755 ./
find . -type f -name '*.sh' -exec chmod 777 \{\} \;
find . -type d -exec chmod 755  \{\} \;

