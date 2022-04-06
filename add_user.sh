#!/bin/bash

USER_CODE=`id -ur`
USER_CODE_STATUS=1000
# if [ "$USER_CODE" = "$USER_CODE_STATUS" ]; then
#echo "A perfect match"
#echo "user code = $USER_CODE and standard code = $USER_CODE_STATUS"
#fi
[ "$USER_CODE" = "$USER_CODE_STATUS" ] && echo "A perfect match"
