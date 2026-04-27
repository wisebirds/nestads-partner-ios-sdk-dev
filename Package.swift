// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "NestAdsPartnerSDK",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "NestAdsPartnerSDK",
      targets: ["NestAdsPartnerSDKWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://bitbucket.org/wisebirds/nestads-sdk-ios-package", branch: "dev"),
    .package(url: "https://github.com/covigroup/COVI-iOS-SDK.git", from: "1.2.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerSDK",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-dev/releases/download/1.0.0-dev/NestAdsPartnerSDK.xcframework.zip",
      checksum: "c67090896f73518ae388ede74847ca6487723286e2b89097db57d8e61f9cea58"
    ),
    .target(
      name: "NestAdsPartnerSDKWrapper",
      dependencies: [
        "NestAdsPartnerSDK",
        .product(name: "NestAdsSDK", package: "nestads-sdk-ios-package"),
        .product(name: "COVI-iOS-SDK", package: "COVI-iOS-SDK")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
