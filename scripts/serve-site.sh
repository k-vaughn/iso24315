#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if [[ -x .venv/bin/zensical ]]; then
  ZENSICAL=.venv/bin/zensical
elif command -v zensical >/dev/null 2>&1; then
  ZENSICAL=zensical
else
  echo "Install Zensical: python3 -m venv .venv && .venv/bin/pip install -r requirements.txt" >&2
  exit 1
fi

exec "$ZENSICAL" serve
