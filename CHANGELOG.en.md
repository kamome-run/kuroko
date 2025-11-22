# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-11-22

### Added
- **CLI Tool (`kuroko`)**:
  - `setup` command: Automates the installation of `fcitx`, `fcitx-mozc`, and `fonts-noto-cjk`. Configures environment variables (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) in `.bashrc`.
  - `launch` command: Wraps application execution to ensure correct IME environment variables are loaded. Supports VS Code, Antigravity, Cursor, etc.
  - `doctor` command: Diagnoses the system for correct Fcitx daemon status and environment variable configuration.
- **Documentation**:
  - README files (English, Japanese, Chinese, Korean, Traditional Chinese).
  - Added navigation badges to README files.
  - Created contribution guidelines (`CONTRIBUTING.md`) in multiple languages.
  - Added Contributing section to READMEs.
  - Added uninstallation instructions.
- **License**:
  - GNU General Public License v3.0 (GPLv3).
