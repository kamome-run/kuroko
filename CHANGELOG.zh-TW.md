# 變更日誌

本專案的所有重要更改都將記錄在此文件中。

格式基於 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
並且本專案遵守 [Semantic Versioning](https://semver.org/lang/zh-CN/spec/v2.0.0.html)。

## [0.1.0] - 2025-11-22

### 新增
- **CLI 工具 (`kuroko`)**:
  - `setup` 命令: 自動安裝 `fcitx`, `fcitx-mozc`, `fonts-noto-cjk`，並在 `.bashrc` 中配置環境變數 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)。
  - `launch` 命令: 包裝應用程式執行，確保加載正確的 IME 環境變數。支援 VS Code, Antigravity, Cursor 等。
  - `doctor` 命令: 診斷系統以確保 Fcitx 守護進程狀態和環境變數配置正確。
- **文檔**:
  - README 文件（英語、日語、中文、韓語、繁體中文）。
  - 添加了 README 文件的導航徽章。
  - 建立了貢獻指南 (`CONTRIBUTING.md`)（多語言支援）。
  - 在 README 中添加了貢獻部分。
  - 添加了卸載說明。
- **許可證**:
  - GNU General Public License v3.0 (GPLv3)。
