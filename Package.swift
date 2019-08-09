// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "App")

package.products = [
        .executable(
            name: "app",
            targets: ["cli"]),
]

package.targets = [
        .target(
            name: "cli",
            dependencies: ["App"]),
        .target(
            name: "App",
            dependencies: ["CLib", "CxxWrapper", "StaticLib"]),
        .target(
            name: "CLib"),
        .target(
            name: "CxxWrapper",
            dependencies: ["CxxLib"]),
        .target(
            name: "CxxLib",
            cxxSettings: [
                .define("UPPERCASE")
            ]),
        .target(
            name: "StaticLib",
            linkerSettings: [
                .unsafeFlags([
                    "./StaticLib/staticlib.a"
                ])
            ]),
]
