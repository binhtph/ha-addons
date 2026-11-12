# IRIS Face Recognition

[Tiếng Việt](#tiếng-việt) | [English](#english)

## Tiếng Việt

Home Assistant OS add-on cho `ghcr.io/binhtph/facedetect:2.0.1`.

IRIS nhận diện khuôn mặt local bằng InsightFace. Dữ liệu được lưu trên máy Home Assistant.

Mã nguồn và hướng dẫn đầy đủ (chọn model, MQTT, go2rtc): [binhtph/facedetect](https://github.com/binhtph/facedetect/blob/main/README_vi.md). Phát triển tiếp từ Release 1.0 của [anhnvme/facedetect](https://github.com/anhnvme/facedetect) và [anhnvme/hass-facedetect-addon](https://github.com/anhnvme/hass-facedetect-addon).

### Cấu hình

```yaml
data_dir: /homeassistant/iris
```

- `data_dir`: path mà add-on đưa cho IRIS làm thư mục `/data`.
- Mặc định `/homeassistant/iris` để xem được bằng File editor trong thư mục cấu hình Home Assistant.
- Nếu muốn dễ truy cập qua Samba/file editor, dùng `/share/iris`.
- Nếu muốn đặt trong media storage, dùng `/media/iris`.

### Sidebar và port

IRIS hiện trong sidebar của Home Assistant (bật **Show in sidebar** ở trang add-on). Truy cập qua sidebar đi qua đăng nhập của Home Assistant.

Port `8080` vẫn mở để gọi API/giao diện trực tiếp, nhưng **không có đăng nhập**. Nếu không cần, xoá port trong **Network -> 80/tcp** để chỉ dùng qua sidebar.

### Cài đặt

1. Add repository này trong Home Assistant: **Settings -> Add-ons -> Add-on Store -> Repositories**.
2. Install **IRIS Face Recognition**.
3. Start add-on.
4. Bật **Show in sidebar**, rồi mở **IRIS** trên sidebar (hoặc bấm **Open Web UI**).
5. Cấu hình **MQTT** và **model** trong **Settings** tùy theo máy (máy yếu dùng `buffalo_s`).

### Thêm camera (go2rtc)

1. Thêm camera vào [go2rtc](https://github.com/AlexxIT/go2rtc).
2. Lấy link ảnh tĩnh dạng `http://<máy-go2rtc>:1984/api/frame.jpeg?src=<tên_camera>`.
3. Trong IRIS: **Cameras → Add camera**, dán link vào **Still image URL**.
4. Khi có trigger (nút MQTT `Trigger <tên camera>` trong Home Assistant, hoặc gọi `/api/cameras/trigger/<slug>`), IRIS chụp một ảnh và nhận diện.

### Khuyến nghị quan trọng

- Nên dùng ở khu vực có thêm các lớp an ninh vật lý; không dùng IRIS làm điều kiện duy nhất để mở cửa.
- Test kỹ trước khi đưa vào thực tế.
- Không train nhồi nhét quá nhiều ảnh cho một người, dễ tăng tỷ lệ nhận nhầm.

### Những vấn đề đã biết

- Tỷ lệ % hiển thị thường không cao nhưng rất ít khi nhận nhầm (đây là độ tương đồng, không phải xác suất).
- Chưa có kiểm tra người thật (liveness): ảnh in hoặc ảnh trên điện thoại có thể qua mặt.

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

Home Assistant OS add-on wrapper for `ghcr.io/binhtph/facedetect:2.0.1`.

IRIS runs local face recognition with InsightFace. Data stays on the Home Assistant machine.

Source code and full guide (model choice, MQTT, go2rtc): [binhtph/facedetect](https://github.com/binhtph/facedetect). Continues from Release 1.0 of [anhnvme/facedetect](https://github.com/anhnvme/facedetect) and [anhnvme/hass-facedetect-addon](https://github.com/anhnvme/hass-facedetect-addon).

### Options

```yaml
data_dir: /homeassistant/iris
```

- `data_dir`: path passed to IRIS as its `/data` directory.
- The default `/homeassistant/iris` is visible from File editor inside the Home Assistant configuration directory.
- Use `/share/iris` if you want easier access through Samba/file editor.
- Use `/media/iris` only if you want the data under media storage.

### Sidebar and port

IRIS shows up in the Home Assistant sidebar (turn on **Show in sidebar** on the add-on page). Access through the sidebar goes through Home Assistant's login.

Port `8080` stays open for direct UI/API access, but it has **no login**. If you don't need it, clear **Network -> 80/tcp** so IRIS is only reachable through the sidebar.

### Install

1. Add this repository in Home Assistant: **Settings -> Add-ons -> Add-on Store -> Repositories**.
2. Install **IRIS Face Recognition**.
3. Start the add-on.
4. Turn on **Show in sidebar** and open **IRIS** from the sidebar (or click **Open Web UI**).
5. Configure **MQTT** and the **model** in **Settings** to suit your machine (use `buffalo_s` on modest hardware).

### Adding cameras (go2rtc)

1. Add the camera to [go2rtc](https://github.com/AlexxIT/go2rtc).
2. Use its still image link: `http://<go2rtc-host>:1984/api/frame.jpeg?src=<camera_name>`.
3. In IRIS: **Cameras → Add camera**, paste the link into **Still image URL**.
4. On a trigger (the MQTT button `Trigger <camera name>` in Home Assistant, or a call to `/api/cameras/trigger/<slug>`), IRIS grabs one image and recognizes it.

### Important recommendations

- Use it where other physical security layers exist; do not make IRIS the only condition for unlocking doors.
- Test thoroughly before relying on it.
- Do not over-train one person with too many images; it increases false matches.

### Known issues

- The displayed percentage is often not high, yet false matches are rare (it is a similarity score, not a probability).
- No liveness check yet: a printed photo or a phone screen can fool it.

### Data

IRIS stores data under `data_dir`:

```text
database/iris.sqlite3
models/insightface/
uploads/
```

### License Note

InsightFace pretrained models may have non-commercial research restrictions. Review the upstream project license notes before commercial use.
