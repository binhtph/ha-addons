# Base image of the add-on. If your Home Assistant host is not supported by this
# image (e.g. it only has linux/arm64 and the host is amd64), change it here
# and bump "version" in config.yaml.
# Note: do not name this BUILD_FROM, the Supervisor passes its own value for that.
ARG TORK_IMAGE=tranphuongbinh/tork
FROM ${TORK_IMAGE}

# Root avoids permission problems on the root-owned /config (addon_config) mount.
# Change to 1000/1000 if the image handles ownership itself.
ENV PUID=0 \
    PGID=0 \
    TZ=Asia/Ho_Chi_Minh
