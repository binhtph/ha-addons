# Tork add-on

## Ports

| Port | Purpose |
|------|---------|
| 7681 | Web TUI (use the "Open Web UI" button) |
| 7682 | Torznab indexer API |

## Add Tork to Radarr / Sonarr

In Radarr: **Settings → Indexers → Add → Torznab → Custom**

- **URL:** `http://<IP of the Home Assistant host>:7682`
- **API Path:** `/api`
- **API Key:** only if Tork asks for one (check its config or the Web TUI)
- **Categories:** `2000` (Movies) for Radarr, `5000` (TV) for Sonarr

Use the host IP, not a container name: Radarr runs outside the add-on network.

## Configuration files

Tork's config is stored in the add-on's config folder:
`/addon_configs/<id>_tork/.tork/` (visible through the Samba or File editor
add-ons under `addon_configs`). It is included in Home Assistant backups.

## Troubleshooting

- **Build fails with "no matching manifest" / platform error:** the base image
  has no build for your CPU architecture. Edit `TORK_IMAGE` in the `Dockerfile`
  (or check `docker buildx imagetools inspect <image>` for `linux/amd64`
  and `linux/arm64`), then bump `version` in `config.yaml`.
- **`addgroup: gid '0' in use` at startup:** `PUID` / `PGID` in the `Dockerfile`
  must not be `0` (root's id). Keep them at `1000`.
- **Permission denied on /config:** the add-on config folder is created by
  Home Assistant, so check the add-on **Log** to see whether the image can
  take ownership of it.
- Always check the add-on **Log** tab first.
