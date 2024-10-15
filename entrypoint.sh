#!/usr/bin/env bash
set -o errexit -o nounset -o xtrace -o pipefail
shopt -s inherit_errexit nullglob dotglob

# Clean only the contents of GITHUB_WORKSPACE
rm -rf "${GITHUB_WORKSPACE:?}"/*

if test "${RUNNER_DEBUG:-0}" != '1'; then
  set +o xtrace
fi
