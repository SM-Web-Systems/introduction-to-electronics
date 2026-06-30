#!/bin/bash

SITE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Find an available port starting from 8080
PORT=8080
while lsof -i TCP:$PORT &>/dev/null; do
  PORT=$((PORT + 1))
done

echo "Starting Electronics Course LMS on http://localhost:$PORT"
echo "Press Ctrl+C to stop."
echo ""

# Open browser after a short delay
(sleep 1 && open "http://localhost:$PORT") &

cd "$SITE_DIR"
python3 -m http.server $PORT
