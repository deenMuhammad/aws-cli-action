#!/bin/sh -e

AWS_CONFIG=/root/.aws/config

if [ ! -f "$AWS_CONFIG" ]; then 
  cat <<EOF > $AWS_CONFIG
[default]
region = ${AWS_REGION}
cli_binary_format = raw-in-base64-out
EOF
fi

TEMP=$(mktemp)
sh -c "aws $*" > $TEMP
if [ -z "$JQ_ARGS" ]; then
  echo "::set-output name=result::$(cat ${TEMP})"
else
  echo "::set-output name=result::$(cat ${TEMP} | jq $JQ_ARGS)"
fi
