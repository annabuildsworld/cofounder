#!/bin/sh
# Vercel build: writes config.js from the FORMSPREE_ENDPOINT environment variable
# so the Formspree link never lives in the repo.
set -e
if [ -z "$FORMSPREE_ENDPOINT" ]; then
  echo "Error: set the FORMSPREE_ENDPOINT environment variable in Vercel (Settings > Environment Variables)" >&2
  exit 1
fi
rm -rf public
mkdir public
cp index.html public/
printf 'window.FORMSPREE_ENDPOINT = "%s";\n' "$FORMSPREE_ENDPOINT" > public/config.js
