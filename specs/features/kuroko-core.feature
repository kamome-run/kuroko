Feature: Kuroko Setup and Execution
  As a developer on ChromeOS (Crostini)
  I want to set up my Japanese input environment automatically
  So that I can code in VS Code/Antigravity without IME issues

  # シナリオ1: 初回セットアップ（依存パッケージの導入）
  Scenario: Install dependencies and configure environment variables
    Given I am running on a "Debian/Linux" environment in Crostini
    And the package "fcitx-mozc" is NOT installed
    When I run the command "kuroko setup"
    Then the system should install "fcitx-mozc" and "fonts-noto-cjk"
    And my shell configuration file ".bashrc" should contain "export GTK_IM_MODULE=fcitx"
    And my shell configuration file ".bashrc" should contain "export XMODIFIERS=@im=fcitx"
    And a backup file ".bashrc.bak" should be created

  # シナリオ2: アプリケーション起動ラッパーの動作
  Scenario: Launch Antigravity with correct IME variables via Kuroko
    Given I have installed "antigravity"
    And the Fcitx daemon is running
    When I run the command "kuroko launch antigravity"
    Then the process "antigravity" should start
    And the process environment variable "GTK_IM_MODULE" should be "fcitx"
    And the Japanese input should be active in the editor window

  # シナリオ3: 診断機能（Doctor）
  Scenario: Diagnose environment issues
    Given the environment variable "GTK_IM_MODULE" is unset
    When I run the command "kuroko doctor"
    Then the output should contain "[ERROR] GTK_IM_MODULE is missing"
    And the output should contain "Run 'kuroko setup' to fix"