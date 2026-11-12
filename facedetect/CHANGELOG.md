# Changelog

## 2.0.0 - 2026-11-12

- Image `ghcr.io/binhtph/facedetect:2.0.0`.
- IRIS in the Home Assistant sidebar (ingress), behind Home Assistant's login.
- MQTT: one persistent connection with Last Will; entities come back by themselves after IRIS, broker or Home Assistant restarts.
- Recognize several faces per image (Settings → Faces per image).
- New Analytics and MQTT Monitor pages.

## 1.0.4 - 2026-11-11

- Pin image to `ghcr.io/binhtph/facedetect:1.0.4` instead of `latest`.

## 1.0.3 - 2026-11-11

- Use image `ghcr.io/binhtph/facedetect:latest`.
- To pick up a newer `latest` image, press **Rebuild** on the add-on page, or bump `version` so Home Assistant offers an update.

## 1.0.2 - 2026-07-06

- Store IRIS data under `/homeassistant/iris` by default so it is visible in Home Assistant File editor.
- Mount the Home Assistant configuration directory into the add-on at `/homeassistant`.
- Allow `data_dir` to use `/homeassistant/iris`, `/share/iris`, `/media/iris`, or `/data`.
- Update repository metadata to `anhnvme/hass-facedetect-addon`.

