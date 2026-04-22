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
    .package(url: "https://bitbucket.org/wisebirds/nestads-sdk-ios-package", exact: "2.12.0-dev"),
    .package(url: "https://github.com/covigroup/COVI-iOS-SDK.git", from: "1.2.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerSDK",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-dev/releases/download/1.0.0-dev/NestAdsPartnerSDK.xcframework.zip",
      checksum: "37843338b87278fc339f4fcb9e726c60223a04254401e5d8a9773d4fb6bda91b"
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
