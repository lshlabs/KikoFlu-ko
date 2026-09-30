# KikoFlu KO 🇰🇷

KikoFlu KO는 [pa-jesusf/KikoFlu](https://github.com/pa-jesusf/KikoFlu)를 기반으로 한 비공식 한국어 현지화 포크입니다. 원본 KikoFlu의 기능과 구조를 유지하면서 한국어 UI를 추가하는 것을 목적으로 합니다. KikoFlu KO는 원본 프로젝트의 공식 배포판이 아닙니다.

원본 프로젝트의 README는 [README_UPSTREAM.md](README_UPSTREAM.md)에서 원문 그대로 확인할 수 있습니다.

## 한국어 현지화

- UI locale `ko`를 추가해 한국어 UI를 지원합니다.
- 앱 설정 → 언어에서 `한국어`를 선택할 수 있습니다.
- 총 1,104개의 localization key를 번역했습니다.
- 기존 placeholder 구조와 기존 언어 지원을 유지합니다.
- 서버 API, 플레이어 로직, 데이터베이스, Kikoeru 프로토콜은 변경하지 않았습니다.

한국어 번역 변경은 원본 프로젝트에 upstream Pull Request로 제안할 예정입니다.

## 플랫폼 및 바이너리 제공 현황

원본 KikoFlu는 Android, iOS, Windows, macOS, Linux를 지원하는 Flutter 크로스플랫폼 앱입니다. 아래 표는 원본의 플랫폼 지원 여부가 아니라 **KikoFlu KO 저장소에서 현재 제공하는 사전 빌드 바이너리 현황**을 나타냅니다.

| 플랫폼 | KikoFlu KO 사전 빌드 제공 상태 |
| --- | --- |
| Android | 제공 — 직접 빌드 및 실기기 테스트 완료 |
| Windows | 바이너리 미제공 |
| macOS | 바이너리 미제공 |
| Linux | 바이너리 미제공 |
| iOS | 바이너리 미제공 |

KikoFlu KO의 소스 차원 현지화는 원본과 동일한 Flutter 코드베이스를 기반으로 합니다. 현재 이 저장소에서 직접 빌드·테스트하고 GitHub Release로 배포하는 사전 빌드 앱은 Android APK입니다.

## 다운로드

[GitHub Releases](https://github.com/lshlabs/KikoFlu-ko/releases)에서 Android APK를 받을 수 있습니다.

첫 배포 버전은 **KikoFlu KO v3.8.2-ko.1**이며, 기반 upstream 버전은 **KikoFlu 3.8.2**입니다.

- `KikoFlu-KO-v3.8.2-ko.1-arm64-v8a.apk` — 대부분의 최근 Android 스마트폰에 권장합니다.
- `KikoFlu-KO-v3.8.2-ko.1-universal.apk` — 기기 아키텍처를 모르는 경우 선택할 수 있습니다.
- `KikoFlu-KO-v3.8.2-ko.1-armeabi-v7a.apk` — 구형 32-bit ARM Android 기기용입니다.
- `KikoFlu-KO-v3.8.2-ko.1-x86_64.apk` — Android Emulator 및 일부 x86_64 환경용입니다.

각 Release에는 파일 무결성 확인을 위한 `SHA256SUMS.txt`가 포함됩니다.

## Android 패키지 정보

KikoFlu KO는 공식 KikoFlu와 동시에 설치할 수 있도록 별도의 Android Application ID를 사용합니다.

- Application ID: `com.lshlabs.kikoflu.ko`
- 앱 표시 이름: `KikoFlu KO`

별도 ID는 원본 KikoFlu의 패키지명과 충돌하지 않도록 하기 위한 것입니다.

## 테스트 환경

다음 환경과 기능을 확인했습니다.

- Galaxy S20, Android 13
- Flutter 3.44.7, Android SDK 36
- Self-hosted Kikoeru 서버 연결 (`http://SERVER_IP:8888` 형식)
- 로그인, 작품 목록 탐색, 작품 상세 확인
- 오디오 재생
- 앱 설정에서 한국어 UI로 전환

## 서버 연결

KikoFlu KO는 기존 Kikoeru 서버 API를 그대로 사용합니다. 한국어 포팅 과정에서 서버 API나 통신 프로토콜을 변경하지 않았습니다. 앱의 서버 주소 설정에 사용하는 Kikoeru 서버 주소를 입력하면 됩니다.

## 직접 빌드

Flutter 3.44.7 환경에서 저장소 루트에서 다음 명령을 실행합니다.

```bash
flutter pub get
flutter gen-l10n
flutter build apk --release
```

ABI별 APK를 빌드하려면 다음 명령을 사용합니다.

```bash
flutter build apk --release --split-per-abi
```

## 원본 프로젝트 및 감사

- 원본 프로젝트: [pa-jesusf/KikoFlu](https://github.com/pa-jesusf/KikoFlu)

KikoFlu KO는 원본 KikoFlu를 기반으로 한 수정 및 현지화 포크입니다. 원본 개발자와 모든 기여자에게 감사드립니다. KikoFlu의 전체 기능 설명, 다른 플랫폼에 대한 안내, 최신 upstream 변경 사항은 [원본 프로젝트](https://github.com/pa-jesusf/KikoFlu)를 참고해 주세요.

## 기여

다음 문제를 발견하면 [KikoFlu KO Issues](https://github.com/lshlabs/KikoFlu-ko/issues)에 제보해 주세요.

- 오역 또는 어색한 한국어 표현
- UI 텍스트 잘림
- 한국어 locale 관련 문제
- Android KO 빌드 문제

한국어 현지화 변경은 가능한 한 원본 프로젝트에도 반영하는 것을 목표로 합니다.

## 라이선스

KikoFlu KO는 원본과 동일하게 GPL-3.0 License를 따릅니다. 원본 저작권과 라이선스 고지는 저장소의 [LICENSE](LICENSE) 파일을 확인해 주세요.
