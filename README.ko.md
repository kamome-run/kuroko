# Kuroko: Crostini 개발 환경 최적화 도구

[![Japanese](https://img.shields.io/badge/lang-🇯🇵_日本語-white.svg)](README.md) [![English](https://img.shields.io/badge/lang-🇺🇸_English-blue.svg)](README.en.md) [![Chinese](https://img.shields.io/badge/lang-🇨🇳_中文-red.svg)](README.zh.md) [![Traditional Chinese](https://img.shields.io/badge/lang-🇹🇼_繁體中文-blue.svg)](README.zh-TW.md)

Kuroko는 ChromeOS (Crostini) 환경에서의 일본어 입력 문제를 해결하고 개발 환경 설정을 자동화하는 CLI 도구입니다. 특히 Electron 기반 앱(VS Code, Antigravity 등)이 GTK/Qt 브리지 부재로 인해 IME(Fcitx-Mozc)와 올바르게 통신하지 못하는 문제를 해결하는 데 중점을 둡니다.

## 기능

- **자동 설정**: 필요한 패키지(`fcitx`, `fcitx-mozc`, `fonts-noto-cjk`)를 설치하고 셸 설정 파일에 환경 변수(`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)를 설정합니다.
- **애플리케이션 런처**: 올바른 IME 환경 변수를 강제하여 애플리케이션을 실행하는 래퍼 기능을 제공하여 일본어 입력을 보장합니다.
- **진단 도구**: `doctor` 명령으로 Fcitx 데몬의 작동 상태와 환경 변수 설정을 확인할 수 있습니다.

## 설치

1. 저장소를 복제합니다:
   ```bash
   git clone <repository-url>
   cd kuroko
   ```
2. 설정 명령을 실행합니다:
   ```bash
   ./kuroko setup
   ```
3. 셸을 다시 시작하거나 `source ~/.bashrc`를 실행합니다.

## 사용법

### 환경 설정
```bash
./kuroko setup
```

### 애플리케이션 실행
IME 지원과 함께 애플리케이션(VS Code, Antigravity, Cursor 등)을 실행하려면:
```bash
./kuroko launch <application-name>

# 사용 예
./kuroko launch code        # VS Code
./kuroko launch antigravity # Antigravity
./kuroko launch cursor      # Cursor
```

### 문제 진단
환경이 올바르게 설정되었는지 확인하려면:
```bash
./kuroko doctor
```

## 제거

Kuroko를 제거하려면 다음 단계를 따르세요.

1. `.bashrc`에서 Kuroko가 추가한 다음 줄을 삭제합니다.
   ```bash
   export GTK_IM_MODULE=fcitx
   export QT_IM_MODULE=fcitx
   export XMODIFIERS=@im=fcitx
   ```
2. `kuroko` 디렉토리를 삭제합니다.
   ```bash
   rm -rf kuroko
   ```
3. (선택 사항) 설치된 패키지가 더 이상 필요하지 않은 경우 삭제합니다.
   ```bash
   sudo apt remove fcitx fcitx-mozc fonts-noto-cjk
   ```

## 지원
도움이 필요하거나 버그를 발견하면 GitHub Issues에 보고해 주세요.

## 기여
자세한 기여 가이드라인은 [CONTRIBUTING.ko.md](CONTRIBUTING.ko.md)를 참조하십시오.

## 라이선스
이 프로젝트는 GNU General Public License v3.0에 따라 라이선스가 부여됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.
