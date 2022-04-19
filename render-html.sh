#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --rm \
  -v "${SCRIPT_DIR}":/documents/ \
  asciidoctor/docker-asciidoctor \
  asciidoctor \
  --require asciidoctor-diagram \
  --destination-dir target \
  docs/index.adoc
