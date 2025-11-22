# Kuroko: Crostini 開発環境最適化ツール

Kurokoは、ChromeOS (Crostini) 環境における日本語入力の課題を解決し、開発環境のセットアップを自動化するCLIツールです。特に、Electron製アプリ（VS Code, Antigravity等）がIME（Fcitx-Mozc）と正しく通信できない問題（GTK/Qtブリッジの欠如）を解決することを主眼としています。

## 機能

- **自動セットアップ**: 必要なパッケージ（`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`）をインストールし、シェル設定ファイルに環境変数（`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`）を設定します。
- **アプリケーションランチャー**: 正しいIME環境変数を強制してアプリケーションを起動するラッパー機能を提供し、日本語入力を確実にします。
- **診断ツール**: `doctor` コマンドでFcitxデーモンの稼働状況や環境変数の設定を確認できます。

## インストール

1. リポジトリをクローンします:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. セットアップコマンドを実行します:
   ```bash
   ./kuroko setup
   ```
3. シェルを再起動するか、`source ~/.bashrc` を実行します。

## 使い方

### 環境セットアップ
```bash
./kuroko setup
```

### アプリケーションの起動
IMEサポート付きでアプリケーション（VS Code, Antigravity, Cursorなど）を起動するには:
```bash
./kuroko launch <application-name>

# 使用例
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### 問題の診断
環境が正しく設定されているか確認するには:
```bash
./kuroko doctor
```

## アンインストール

Kurokoを削除するには、以下の手順を行ってください。

1. `.bashrc` からKurokoが追加した以下の行を削除します。
   ```bash
   export GTK_IM_MODULE=fcitx
   export QT_IM_MODULE=fcitx
   export XMODIFIERS=@im=fcitx
   ```
2. `kuroko` ディレクトリを削除します。
   ```bash
   rm -rf kuroko
   ```
3. (オプション) インストールされたパッケージが不要な場合は削除します。
   ```bash
   sudo apt remove fcitx fcitx-mozc fonts-noto-cjk
   ```

## サポート
ヘルプが必要な場合やバグを見つけた場合は、GitHubのIssueで報告してください。

## ライセンス
本プロジェクトは GNU General Public License v3.0 の下でライセンスされています。詳細は [LICENSE](LICENSE) ファイルを参照してください。
