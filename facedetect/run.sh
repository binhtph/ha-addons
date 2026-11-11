#!/bin/sh
set -eu

OPTIONS_FILE="/data/options.json"

data_dir="$(
  node -e '
    const fs = require("fs");
    const file = process.argv[1];
    const fallback = "/data";
    try {
      const options = JSON.parse(fs.readFileSync(file, "utf8"));
      const value = String(options.data_dir || fallback).trim();
      process.stdout.write(value || fallback);
    } catch {
      process.stdout.write(fallback);
    }
  ' "$OPTIONS_FILE"
)"

case "$data_dir" in
  /data|/data/*|/homeassistant/*|/share/*|/media/*) ;;
  *)
    echo "Invalid data_dir: $data_dir"
    echo "Use /data, /homeassistant/iris, /share/iris, or /media/iris."
    exit 1
    ;;
esac

mkdir -p "$data_dir"
export IRIS_DATA_DIR="$data_dir"

exec /app/docker/start.sh
