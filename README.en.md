# Kuroko: Crostini Development Environment Optimizer

[![Japanese](https://img.shields.io/badge/lang-🇯🇵_日本語-white.svg)](README.md) [![Chinese](https://img.shields.io/badge/lang-🇨🇳_中文-red.svg)](README.zh.md) [![Korean](https://img.shields.io/badge/lang-🇰🇷_한국어-green.svg)](README.ko.md) [![Traditional Chinese](https://img.shields.io/badge/lang-🇹🇼_繁體中文-blue.svg)](README.zh-TW.md)

Kuroko is a CLI tool that solves Japanese input issues in the ChromeOS (Crostini) environment and automates the setup of the development environment. It specifically focuses on resolving the issue where Electron-based apps (VS Code, Antigravity, etc.) cannot communicate correctly with the IME (Fcitx-Mozc) due to missing GTK/Qt bridges.

## Features

- **Auto Setup**: Installs necessary packages (`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`) and configures environment variables (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`) in shell configuration files.
- **Application Launcher**: Provides a wrapper function to launch applications with the correct IME environment variables enforced, ensuring Japanese input works.
- **Diagnostic Tool**: The `doctor` command checks the status of the Fcitx daemon and environment variable configurations.

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. Run the setup command:
   ```bash
   ./kuroko setup
   ```
3. Restart your shell or run `source ~/.bashrc`.

## Usage

### Environment Setup
```bash
./kuroko setup
```

### Launching Applications
To launch applications (VS Code, Antigravity, Cursor, etc.) with IME support:
```bash
./kuroko launch <application-name>

# Examples
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### Diagnostics
To check if the environment is configured correctly:
```bash
./kuroko doctor
```

## Uninstallation

To remove Kuroko, follow these steps:

1. Remove the following lines added by Kuroko from your `.bashrc`:
   ```bash
   export GTK_IM_MODULE=fcitx
   export QT_IM_MODULE=fcitx
   export XMODIFIERS=@im=fcitx
   ```
2. Remove the `kuroko` directory:
   ```bash
   rm -rf kuroko
   ```
3. (Optional) Remove the installed packages if they are no longer needed:
   ```bash
   sudo apt remove fcitx fcitx-mozc fonts-noto-cjk
   ```

## Support
If you need help or find a bug, please report it on GitHub Issues.

## Contributing
Please refer to [CONTRIBUTING.en.md](CONTRIBUTING.en.md) for detailed contribution guidelines.

## License
This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
