#!/usr/bin/env sh

set -e

GENERATOR=$1
OUT_DIR=$2
TEMPLATES_DIR=$(mktemp -d)

mkdir -p "${TEMPLATES_DIR}/.github"
rsync -a "./templates/base/" "${TEMPLATES_DIR}/"
cp .github/CODEOWNERS "${TEMPLATES_DIR}/.github"
cp LICENSE "${TEMPLATES_DIR}"
rsync -a "./templates/${GENERATOR}/" "${TEMPLATES_DIR}/"

openapi-generator-cli generate \
  -i spec/openapi.yaml \
  -g ${GENERATOR} \
  -o ${OUT_DIR} \
  -c config/${GENERATOR}.yaml \
  -t ${TEMPLATES_DIR} \
  --enable-post-process-file

rm -rf $TEMPLATES_DIR
