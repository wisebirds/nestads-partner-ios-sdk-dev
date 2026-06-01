# NestAdsPartnerSDK (Dev)

Wisebirds NestAds 파트너 통합 iOS SDK의 **개발용(pre-release) 배포 채널**입니다.
내부 QA·통합 검증 용도로만 사용하며, 프로덕션 앱에는 사용하지 마십시오.

프로덕션 채널: https://github.com/wisebirds/nestads-partner-ios-sdk

## 현재 릴리스

dev 채널은 버전 태그가 아닌 **브랜치를 추적**합니다. 아래 "추적 브랜치"가 SPM이 따라가는 실제 기준이며, "현재 버전"은 해당 브랜치에 현재 반영된 번들 버전(참고용)입니다.

| 구성요소 | 추적 브랜치 | 현재 버전 |
|---|---|---|
| NestAdsPartnerSDK | `main` | `1.0.0-dev` |
| NestAdsSDK (번들) | `dev` (Bitbucket `nestads-sdk-ios-package`) | — |
| COVI 환경 | host 앱 `NestAds.environment` 기준 (미설정 시 채널 기본값 `dev`) | — |

## 설치 (Swift Package Manager)

> ⚠️ **dev 채널은 버전 태그가 아닌 브랜치를 추적합니다.**
> 이 패키지는 내부적으로 `nestads-sdk-ios-package`를 `dev` 브랜치로 의존합니다.
> SPM은 **버전(tag)으로 고정된 패키지가 브랜치 의존성을 갖는 것을 허용하지 않으므로**,
> dev 채널을 사용하는 앱은 반드시 이 패키지도 **`main` 브랜치**로 의존해야 합니다.
> (partner 패키지 → `main`, 번들 NestAdsSDK → `dev`)

Xcode → `File` → `Add Package Dependencies…` 에서 아래 URL 입력 후 `Branch = main` 선택:

```
https://github.com/wisebirds/nestads-partner-ios-sdk-dev
```

또는 `Package.swift` 직접 명시:

```swift
dependencies: [
    .package(
        url: "https://github.com/wisebirds/nestads-partner-ios-sdk-dev",
        branch: "main"
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
