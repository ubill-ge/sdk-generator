#!/usr/bin/env sh

set -e

GENERATOR=$1
OUT_DIR=$2
TEMPLATES_DIR=$(mktemp -d)

cp -r ./templates/${GENERATOR} ${TEMPLATES_DIR}/${GENERATOR}
cp -r ./templates/base/* ${TEMPLATES_DIR}/${GENERATOR}

mkdir -p ${TEMPLATES_DIR}/${GENERATOR}/.github
cp .github/CODEOWNERS ${TEMPLATES_DIR}/${GENERATOR}/.github

openapi-generator-cli generate \
  -i spec/openapi.yaml \
  -g ${GENERATOR} \
  -o ${OUT_DIR} \
  -c config/${GENERATOR}.yaml \
  -t ${TEMPLATES_DIR}/${GENERATOR} \
  --enable-post-process-file

rm -rf $TEMPLATES_DIR
