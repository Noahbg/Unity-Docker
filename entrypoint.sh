#!/bin/bash
chmod +x /home/container/linuxBuild.x86_64
xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' /home/container/linuxBuild.x86_64 -batchmode -nographics