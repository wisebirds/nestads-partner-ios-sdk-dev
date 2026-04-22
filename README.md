# NestAdsPartnerSDK (Dev)

Wisebirds NestAds 파트너 통합 iOS SDK의 **개발용(pre-release) 배포 채널**입니다.
내부 QA·통합 검증 용도로만 사용하며, 프로덕션 앱에는 사용하지 마십시오.

프로덕션 채널: https://github.com/wisebirds/nestads-partner-ios-sdk

## 현재 릴리스

| 구성요소 | 버전 |
|---|---|
| NestAdsPartnerSDK | `1.0.1-dev` |
| NestAdsSDK (번들) | `2.12.0-dev` (Bitbucket `nestads-sdk-ios-package`) |
| COVI 환경 | host 앱 `NestAds.environment` 기준 (미설정 시 채널 기본값 `dev`) |

## 설치 (Swift Package Manager)

Xcode → `File` → `Add Package Dependencies…` 에서 아래 URL 입력 후 `Exact Version = 1.0.1-dev` 선택:

```
https://github.com/wisebirds/nestads-partner-ios-sdk-dev
```

또는 `Package.swift` 직접 명시:

```swift
dependencies: [
    .package(
        url: "https://github.com/wisebirds/nestads-partner-ios-sdk-dev",
        exact: "1.0.1-dev"
    )
]
```

## 요구 사항

- iOS 13.0+
- Swift 5.9+
- Xcode 15.0+

## 번들 의존성

| Framework | Source |
|---|---|
| NestAdsSDK | Bitbucket `wisebirds/nestads-sdk-ios-package` (dev 채널) |
| COVI-iOS-SDK | GitHub `covigroup/COVI-iOS-SDK` |

## 문의

Wisebirds NestAds iOS 팀 (내부 채널)
