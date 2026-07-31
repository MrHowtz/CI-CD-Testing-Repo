#!/usr/bin/env bash
set -euo pipefail

# Stand-in for your real deployment (scp to a VM, kubectl apply, az webapp deploy...).
# It only prints, so it is completely safe to run.

ARTIFACT="${1:?usage: deploy.sh <path-to-artifact>}"

echo "==> Deploying ${ARTIFACT}"
echo "    APP_ENV     = ${APP_ENV:-<unset>}"
echo "    TARGET_HOST = ${TARGET_HOST:-<unset>}"

if [ ! -f "${ARTIFACT}" ]; then
  echo "ERROR: artifact not found at ${ARTIFACT}"
  exit 1
fi

echo "    artifact size: $(du -h "${ARTIFACT}" | cut -f1)"
echo "    contents:"
tar -tzf "${ARTIFACT}"

echo "OK: deploy finished (simulated)."
