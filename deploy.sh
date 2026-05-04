#!/usr/bin/env bash
# ─────────────────────────────────────────────
#  deploy.sh  —  Strait Arrow NC
#  Deploys to Netlify site: straitarrownc
#  Site ID: a079f345-da24-4362-b8d3-332bba0b4fce
# ─────────────────────────────────────────────
set -e

SITE_ID="a079f345-da24-4362-b8d3-332bba0b4fce"
SITE_NAME="straitarrownc"

echo ""
echo "▶  Deploying $SITE_NAME to Netlify..."
echo ""

# ── 1. Make sure Netlify CLI is available ──────────────────────
if ! command -v netlify &> /dev/null; then
  echo "  netlify CLI not found — installing..."
  npm install -g netlify-cli
fi

# ── 2. Deploy (production) ─────────────────────────────────────
netlify deploy \
  --site "$SITE_ID" \
  --dir  "." \
  --prod \
  --message "Deploy $(date '+%Y-%m-%d %H:%M')"

echo ""
echo "✅  Done! Live at: https://$SITE_NAME.netlify.app"
echo "    Netlify dashboard: https://app.netlify.com/projects/$SITE_NAME"
echo ""
