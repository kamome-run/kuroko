# 変更履歴

このプロジェクトへのすべての重要な変更はこのファイルに記録されます。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.0.0/) に基づいており、
このプロジェクトは [Semantic Versioning](https://semver.org/lang/ja/spec/v2.0.0.html) に準拠しています。

## [0.1.0] - 2025-11-22

### 追加
- **CLIツール (`kuroko`)**:
  - `setup` コマンド: `fcitx`, `fcitx-mozc`, `fonts-noto-cjk` のインストールを自動化し、`.bashrc` に環境変数 (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) を設定します。
  - `launch` コマンド: アプリケーションの実行をラップし、正しいIME環境変数が読み込まれることを保証します。VS Code, Antigravity, Cursor などをサポートしています。
  - `doctor` コマンド: Fcitxデーモンの状態や環境変数の設定が正しいかどうか、システムを診断します。
- **ドキュメント**:
  - READMEファイル（日本語、英語）。
  - アンインストール手順を追加。
- **ライセンス**:
  - GNU General Public License v3.0 (GPLv3)。
