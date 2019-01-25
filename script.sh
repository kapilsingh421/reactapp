#!/bin/bash
if git log -1 | grep ci skip; then
   echo "Running"
else 
curl -XPOST $BUILD_URL/stop
fi
 
