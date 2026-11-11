# Add-ons for Home Assistant

## Install

1. Open **Settings → Add-ons (Apps) → Add-on Store → ⋮ → Repositories**.
2. Add this repository URL: `https://github.com/binhtph/ha-addons`
3. Find **Tork** in the store, install it and start it.

## Add-ons

- [Tork](tork/) — Torznab indexer with Web TUI for Radarr/Sonarr.
- [YouTube Music Lite](youtube_cast_addon/) — Addon phát nhạc YouTube dành cho Home Assistant.
- [IRIS Face Recognition](facedetect/) — Nhận diện khuôn mặt local bằng InsightFace (image `ghcr.io/binhtph/facedetect`).


## Updating

Change the files, bump `version` in `tork/config.yaml`, push to GitHub, then
use **Check for updates** in the Add-on Store.
