// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterLua",
    products: [
        .library(name: "TreeSitterLua", targets: ["TreeSitterLua"]),
    ],
    targets: [
        .target(
            name: "TreeSitterLua",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries"),
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")],
        ),
    ],
    cLanguageStandard: .c11,
)
