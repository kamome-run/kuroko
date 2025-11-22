# Kuroko: Crostini 开发环境优化工具

[![Japanese](https://img.shields.io/badge/lang-日本語-white.svg)](README.md) [![English](https://img.shields.io/badge/lang-English-blue.svg)](README.en.md) [![Korean](https://img.shields.io/badge/lang-한국어-green.svg)](README.ko.md) [![Traditional Chinese](https://img.shields.io/badge/lang-繁體中文_🇹🇼-blue.svg)](README.zh-TW.md)

Kuroko 是一个 CLI 工具，旨在解决 ChromeOS (Crostini) 环境中的日语输入问题，并自动化开发环境的设置。它特别专注于解决基于 Electron 的应用程序（如 VS Code, Antigravity 等）由于缺少 GTK/Qt 桥接而无法与 IME (Fcitx-Mozc) 正确通信的问题。

## 功能

- **自动设置**: 安装必要的软件包 (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) 并在 shell 配置文件中设置环境变量 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)。
- **应用程序启动器**: 提供一个包装函数，强制使用正确的 IME 环境变量启动应用程序，确保日语输入正常工作。
- **诊断工具**: `doctor` 命令可以检查 Fcitx 守护进程的状态和环境变量配置。

## 安装

1. 克隆仓库:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. 运行设置命令:
   ```bash
   ./kuroko setup
   ```
3. 重启 shell 或运行 `source ~/.bashrc`。

## 使用方法

### 环境设置
```bash
./kuroko setup
```

### 启动应用程序
要在支持 IME 的情况下启动应用程序（VS Code, Antigravity, Cursor 等）:
```bash
./kuroko launch <application-name>

# 示例
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### 问题诊断
要检查环境是否配置正确:
```bash
./kuroko doctor
```

## 卸载

要删除 Kuroko，请按照以下步骤操作:

1. 从 `.bashrc` 中删除 Kuroko 添加的以下行:
   ```bash
   export GTK_IM_MODULE=fcitx
   export QT_IM_MODULE=fcitx
   export XMODIFIERS=@im=fcitx
   ```
2. 删除 `kuroko` 目录:
   ```bash
   rm -rf kuroko
   ```
3. (可选) 如果不再需要，删除已安装的软件包:
   ```bash
   sudo apt remove fcitx fcitx-mozc fonts-noto-cjk
   ```

## 支持
如果您需要帮助或发现错误，请在 GitHub Issues 上报告。

## 贡献
有关详细的贡献指南，请参阅 [CONTRIBUTING.zh.md](CONTRIBUTING.zh.md)。

## 许可证
本项目采用 GNU General Public License v3.0 许可。详情请参阅 [LICENSE](LICENSE) 文件。
