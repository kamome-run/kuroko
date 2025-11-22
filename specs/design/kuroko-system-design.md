# Kuroko: Crostini Development Environment Optimizer

## 1. 概要
Kurokoは、ChromeOS (Crostini) 環境における日本語入力の課題を解決し、開発環境のセットアップを自動化するCLIツールである。
特にElectron製アプリ（VS Code, Antigravity等）がIME（Fcitx-Mozc）と正しく通信できない問題（GTK/Qtブリッジの欠如）を解決することを主眼とする。

## 2. アーキテクチャ方針
- **Language:** Bash Shell Script (依存関係を最小限にするため)
- **Philosophy:** "Idempotent"（べき等性）。何度実行しても環境を破壊せず、あるべき状態に収束させる。
- **Distribution:** ワンライナーでのインストール、またはリポジトリのクローン。

## 3. 機能要件

### 3.1 Environment Setup (Setup Module)
システムに必要なパッケージと環境変数を注入する。
- **Package Install:** `fcitx`, `fcitx-mozc`, `fonts-noto-cjk` 等のインストール確認と実行。
- **Config Injection:** `.bashrc` / `.zshrc` 等のシェル構成ファイルに対し、IME関連の環境変数を追記する。
    - `GTK_IM_MODULE=fcitx`
    - `QT_IM_MODULE=fcitx`
    - `XMODIFIERS=@im=fcitx`

### 3.2 App Launcher Wrapper (Bridge Module)
対象アプリケーションの起動時に、強制的に環境変数を適用するラッパー機能。
- ユーザーが `antigravity` と打った際、内部的に環境変数をセットした上で本来のバイナリを叩くエイリアスまたはスクリプトを提供する。

### 3.3 Doctor (Diagnostic Module)
トラブルシューティング機能。
- `kuroko doctor` コマンドで現状の診断を行う。
    - Fcitxデーモンの稼働状況
    - 環境変数の適用状況
    - Sommelier（Waylandブリッジ）との接続状況

## 4. 非機能要件
- **Performance:** セットアップ処理は可能な限り高速化する（aptのキャッシュ利用など）。
- **Safety:** ユーザーの既存の設定ファイル（.bashrc等）を変更する場合は、必ずバックアップを作成する。