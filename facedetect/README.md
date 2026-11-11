# IRIS Face Recognition

[Tiếng Việt](#tiếng-việt) | [English](#english)

## Tiếng Việt

Home Assistant OS add-on cho `ghcr.io/binhtph/facedetect:latest`.

IRIS nhận diện khuôn mặt local bằng InsightFace. Dữ liệu được lưu trên máy Home Assistant.

### Cấu hình

```yaml
data_dir: /homeassistant/iris
```

- `data_dir`: path mà add-on đưa cho IRIS làm thư mục `/data`.
- Mặc định `/homeassistant/iris` để xem được bằng File editor trong thư mục cấu hình Home Assistant.
- Nếu muốn dễ truy cập qua Samba/file editor, dùng `/share/iris`.
- Nếu muốn đặt trong media storage, dùng `/media/iris`.

### Port

App lắng nghe container port `80`.

Trong Home Assistant add-on settings, đổi **Network -> 80/tcp** sang host port mong muốn. Mặc định là `8080`.

### Cài đặt

1. Add repository này trong Home Assistant: **Settings -> Add-ons -> Add-on Store -> Repositories**.
2. Install **IRIS Face Recognition**.
3. Start add-on.
4. Bấm **Open Web UI** hoặc vào `http://homeassistant.local:8080`.

### Dữ liệu

IRIS lưu dưới `data_dir`:

```text
database/iris.sqlite3
models/insightface/
uploads/
```

### Lưu ý license

InsightFace pretrained models có thể bị giới hạn cho mục đích nghiên cứu phi thương mại. Xem license upstream trước khi dùng thương mại.

## English

Home Assistant OS add-on wrapper for `ghcr.io/binhtph/facedetect:latest`.

IRIS runs local face recognition with InsightFace. Data stays on the Home Assistant machine.

### Options

```yaml
data_dir: /homeassistant/iris
```

- `data_dir`: path passed to IRIS as its `/data` directory.
- The default `/homeassistant/iris` is visible from File editor inside the Home Assistant configuration directory.
- Use `/share/iris` if you want easier access through Samba/file editor.
- Use `/media/iris` only if you want the data under media storage.

### Port

The app listens on container port `80`.

In Home Assistant add-on settings, change **Network -> 80/tcp** to any host port you want. Default is `8080`.

### Install

1. Add this repository in Home Assistant: **Settings -> Add-ons -> Add-on Store -> Repositories**.
2. Install **IRIS Face Recognition**.
3. Start the add-on.
4. Click **Open Web UI** or visit `http://homeassistant.local:8080`.

### Data

IRIS stores data under `data_dir`:

```text
database/iris.sqlite3
models/insightface/
uploads/
```

### License Note

InsightFace pretrained models may have non-commercial research restrictions. Review the upstream project license notes before commercial use.
