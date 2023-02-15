#!/usr/bin/bash
cd etc/build/ && ant war && cd ../../ && unzip build/draw.war -d run/
