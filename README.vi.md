# Kuroko: Công cụ Tối ưu hóa Môi trường Phát triển Crostini

Kuroko là một công cụ dòng lệnh (CLI) được thiết kế để giải quyết các vấn đề nhập liệu tiếng Nhật trong môi trường ChromeOS (Crostini) và tự động hóa việc thiết lập môi trường phát triển. Nó đặc biệt giải quyết vấn đề các ứng dụng dựa trên Electron (như VS Code, Antigravity) không thể giao tiếp chính xác với bộ gõ (Fcitx-Mozc) do thiếu cầu nối GTK/Qt.

## Tính năng

- **Thiết lập Tự động**: Cài đặt các gói cần thiết (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) và cấu hình các biến môi trường (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) trong cấu hình shell của bạn.
- **Trình khởi chạy Ứng dụng**: Một trình bao bọc để khởi chạy các ứng dụng với các biến môi trường IME chính xác được áp dụng, đảm bảo việc nhập liệu tiếng Nhật hoạt động.
- **Công cụ Chẩn đoán**: Lệnh `doctor` để kiểm tra trạng thái của daemon Fcitx và các biến môi trường.

## Cài đặt

1. Sao chép kho lưu trữ này:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. Chạy lệnh thiết lập:
   ```bash
   ./kuroko setup
   ```
3. Khởi động lại shell của bạn hoặc chạy `source ~/.bashrc`.

## Sử dụng

### Thiết lập Môi trường
```bash
./kuroko setup
```

### Khởi chạy Ứng dụng
Để khởi chạy một ứng dụng (ví dụ: VS Code, Antigravity, Cursor) với hỗ trợ bộ gõ:
```bash
./kuroko launch <application-name>

# Ví dụ
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### Chẩn đoán Vấn đề
Để kiểm tra xem môi trường của bạn có được cấu hình chính xác hay không:
```bash
./kuroko doctor
```

## Hỗ trợ
Nếu bạn cần trợ giúp hoặc tìm thấy lỗi, vui lòng mở một vấn đề (Issue) trên GitHub.

## Giấy phép
Dự án này được cấp phép theo GNU General Public License v3.0. Xem tệp [LICENSE](LICENSE) để biết thêm chi tiết.
