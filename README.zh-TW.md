# Kuroko: Crostini 開發環境優化工具

Kuroko 是一個 CLI 工具，旨在解決 ChromeOS (Crostini) 環境中的日語輸入問題，並自動化開發環境的設置。它主要解決 Electron 應用程式（如 VS Code, Antigravity）因缺乏 GTK/Qt 橋接而無法與 IME (Fcitx-Mozc) 正確通訊的問題。

## 功能

- **自動設置**: 安裝必要的套件 (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) 並在您的 Shell 設定檔中配置環境變數 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)。
- **應用程式啟動器**: 提供一個包裝器，強制使用正確的 IME 環境變數啟動應用程式，確保日語輸入功能正常。
- **診斷工具**: 提供 `doctor` 指令來檢查 Fcitx 常駐程式的狀態和環境變數設定。

## 安裝

1. 複製此儲存庫:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. 執行設置指令:
   ```bash
   ./kuroko setup
   ```
3. 重新啟動您的 Shell 或執行 `source ~/.bashrc`。

## 使用方法

### 設置環境
```bash
./kuroko setup
```

### 啟動應用程式
若要啟動支援 IME 的應用程式（例如 VS Code, Antigravity, Cursor）:
```bash
./kuroko launch <application-name>

# 範例
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### 診斷問題
若要檢查您的環境是否配置正確:
```bash
./kuroko doctor
```

## 支援
如果您需要協助或發現錯誤，請在 GitHub 上開啟 Issue。

## 授權
本專案採用 GNU General Public License v3.0 授權。詳情請參閱 [LICENSE](LICENSE) 檔案。
