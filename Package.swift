// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HFCocoaAsyncSocket",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "HFCocoaAsyncSocket",
            targets: ["HFCocoaAsyncSocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HFCocoaAsyncSocket",
            dependencies: [],
            path: "Source/GCD",
            publicHeadersPath: ""),

        .testTarget(name: "SharedObjCTests",
                    dependencies: ["CocoaAsyncSocket"],
                    path: "Tests/Shared/ObjC"),

        .testTarget(name: "SharedSwiftTests",
                    dependencies: ["CocoaAsyncSocket"],
                    path: "Tests/Shared/Swift")
    ]
)
