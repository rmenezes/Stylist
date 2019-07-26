// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Stylist",
    platforms: [.iOS("10.0")],
    products: [
        .library(name: "Stylist",
                 targets: ["Stylist"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rmenezes/KZFileWatchers.git", .branch("swift5")),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0")
    ],
    targets: [
        .target(name: "Stylist",
                dependencies: [
                    .product(name: "KZFileWatchers"),
                    .product(name: "Yams"),
            ],
                path: "Stylist"),
        .testTarget(name: "StylistTests",
                    dependencies: ["Stylist"],
                    path: "Tests"),
    ]
)
