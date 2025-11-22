# Kuroko: Crostini 開發環境優化工具

[![Japanese](https://img.shields.io/badge/lang-日本語-white.svg)](README.md) [![English](https://img.shields.io/badge/lang-English-blue.svg)](README.en.md) [![Chinese](https://img.shields.io/badge/lang-中文-red.svg)](README.zh.md) [![Korean](https://img.shields.io/badge/lang-한국어-green.svg)](README.ko.md)

Kuroko 是一個 CLI 工具，旨在解決 ChromeOS (Crostini) 環境中的日語輸入問題，並自動化開發環境的設置。它特別專注於解決基於 Electron 的應用程式（如 VS Code, Antigravity 等）由於缺少 GTK/Qt 橋接而無法與 IME (Fcitx-Mozc) 正確通信的問題。

## 功能

- **自動設置**: 安裝必要的軟體包 (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) 並在 shell 設定檔中設置環境變數 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)。
- **應用程式啟動器**: 提供一個包裝函數，強制使用正確的 IME 環境變數啟動應用程式，確保日語輸入正常工作。
- **診斷工具**: `doctor` 命令可以檢查 Fcitx 守護進程的狀態和環境變數配置。

## 安裝

1. 複製存儲庫:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. 執行設置命令:
   ```bash
   ./kuroko setup
   ```
3. 重新啟動 shell 或執行 `source ~/.bashrc`。

## 使用方法

### 環境設置
```bash
./kuroko setup
```

### 啟動應用程式
要在支援 IME 的情況下啟動應用程式（VS Code, Antigravity, Cursor 等）:
```bash
./kuroko launch <application-name>

# 範例
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### 問題診斷
要檢查環境是否配置正確:
```bash
./kuroko doctor
```

## 解除安裝

要刪除 Kuroko，請按照以下步驟操作:

1. 從 `.bashrc` 中刪除 Kuroko 添加的以下行:
   ```bash
   export GTK_IM_MODULE=fcitx
   export QT_IM_MODULE=fcitx
   export XMODIFIERS=@im=fcitx
   ```
2. 刪除 `kuroko` 目錄:
   ```bash
   rm -rf kuroko
   ```
3. (可選) 如果不再需要，刪除已安裝的軟體包:
   ```bash
   sudo apt remove fcitx fcitx-mozc fonts-noto-cjk
   ```

## 支援
如果您需要幫助或發現錯誤，請在 GitHub Issues 上報告。

## 貢獻
有關詳細的貢獻指南，請參閱 [CONTRIBUTING.zh-TW.md](CONTRIBUTING.zh-TW.md)。

## 授權
本專案採用 GNU General Public License v3.0 授權。詳情請參閱 [LICENSE](LICENSE) 文件。
