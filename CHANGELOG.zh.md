# 变更日志

本项目的所有重要更改都将记录在此文件中。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
并且本项目遵守 [Semantic Versioning](https://semver.org/lang/zh-CN/spec/v2.0.0.html)。

## [0.1.1] - 2025-11-23

### 新增
- **CLI 工具 (`kuroko`)**:
  - `setup` 命令: 添加了自动 `fcitx` 配置文件配置（启用 `mozc`）。

## [0.1.0] - 2025-11-22

### 新增
- **CLI 工具 (`kuroko`)**:
  - `setup` 命令: 自动安装 `fcitx`, `fcitx-mozc`, `fonts-noto-cjk`，并在 `.bashrc` 中配置环境变量 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)。
  - `launch` 命令: 包装应用程序执行，确保加载正确的 IME 环境变量。支持 VS Code, Antigravity, Cursor 等。
  - `doctor` 命令: 诊断系统以确保 Fcitx 守护进程状态和环境变量配置正确。
- **文档**:
  - README 文件（英语、日语、中文、韩语、繁体中文）。
  - 添加了 README 文件的导航徽章。
  - 创建了贡献指南 (`CONTRIBUTING.md`)（多语言支持）。
  - 在 README 中添加了贡献部分。
  - 添加了卸载说明。
- **许可证**:
  - GNU General Public License v3.0 (GPLv3)。
