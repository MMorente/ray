#!/bin/bash
# This script is used to setup test environment for running core tests.

set -exo pipefail

# Unset dind settings; we are using the host's docker daemon.
unset DOCKER_TLS_CERTDIR
unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_CERT_PATH

DL=1 ./ci/env/install-dependencies.sh
