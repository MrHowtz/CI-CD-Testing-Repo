#!/usr/bin/env bash
set -euo pipefail

# Stand-in for: docker compose run zebra-builder cp zebra-release-current.tar /release_output
# Produces ONE artifact that knows nothing about test vs prod.

VERSION=$(cat app/version.txt)
echo "==> Building release ${VERSION}..."

mkdir -p out
tar -czf "out/app-release.tar.gz" app/

echo "OK: created out/app-release.tar.gz"
ls -la out/
