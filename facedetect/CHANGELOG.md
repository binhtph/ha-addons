# Changelog

## 1.0.3 - 2026-11-11

- Use image `ghcr.io/binhtph/facedetect:latest`.
- To pick up a newer `latest` image, press **Rebuild** on the add-on page, or bump `version` so Home Assistant offers an update.

## 1.0.2 - 2026-07-06

- Store IRIS data under `/homeassistant/iris` by default so it is visible in Home Assistant File editor.
- Mount the Home Assistant configuration directory into the add-on at `/homeassistant`.
- Allow `data_dir` to use `/homeassistant/iris`, `/share/iris`, `/media/iris`, or `/data`.
- Update repository metadata to `anhnvme/hass-facedetect-addon`.

