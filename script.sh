#!/bin/bash
if git log -1 | grep ci skip; then
   echo "Running"
else
wget --post-data="" $BUILD_URL/stop
fi
 
