#!/usr/bin/env bash
# Build the Chrome Web Store upload: dist/cursorcraft-<version>.zip
# (manifest.json at the zip root, no repo-only files).
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
src="$root/cursorcraft"
version="$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$src/manifest.json" | head -n 1)"
out="$root/dist/cursorcraft-$version.zip"

mkdir -p "$root/dist"
rm -f "$out"
(cd "$src" && zip -r -X -q "$out" manifest.json background.js swarm.js icons -x '*.DS_Store')
echo "Built $out"
unzip -l "$out"
