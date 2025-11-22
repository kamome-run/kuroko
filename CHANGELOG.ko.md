# 변경 기록

이 프로젝트의 모든 주요 변경 사항은 이 파일에 기록됩니다.

형식은 [Keep a Changelog](https://keepachangelog.com/ko/1.0.0/)을 기반으로 하며,
이 프로젝트는 [Semantic Versioning](https://semver.org/lang/ko/spec/v2.0.0.html)을 준수합니다.

## [0.1.0] - 2025-11-22

### 추가됨
- **CLI 도구 (`kuroko`)**:
  - `setup` 명령: `fcitx`, `fcitx-mozc`, `fonts-noto-cjk` 설치를 자동화하고 `.bashrc`에 환경 변수(`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`)를 설정합니다.
  - `launch` 명령: 올바른 IME 환경 변수가 로드되도록 애플리케이션 실행을 래핑합니다. VS Code, Antigravity, Cursor 등을 지원합니다.
  - `doctor` 명령: Fcitx 데몬 상태 및 환경 변수 구성이 올바른지 시스템을 진단합니다.
- **문서**:
  - README 파일 (영어, 일본어, 중국어, 한국어, 번체 중국어).
  - README 파일에 탐색 배지를 추가했습니다.
  - 기여 가이드라인(`CONTRIBUTING.md`)을 작성했습니다(다국어 지원).
  - README에 기여 섹션을 추가했습니다.
  - 제거 지침을 추가했습니다.
- **라이선스**:
  - GNU General Public License v3.0 (GPLv3).
