# Base image of the add-on. If your Home Assistant host is not supported by this
# image (e.g. it only has linux/arm64 and the host is amd64), change it here
# and bump "version" in config.yaml.
# Note: do not name this BUILD_FROM, the Supervisor passes its own value for that.
ARG TORK_IMAGE=tranphuongbinh/tork
FROM ${TORK_IMAGE}

# Do not use 0/0: the image's startup script creates a group/user from these
# values and fails with "addgroup: gid '0' in use" because gid 0 is root's.
ENV PUID=1000 \
    PGID=1000 \
    TZ=Asia/Ho_Chi_Minh
