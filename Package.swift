// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RealmSPMXcode",
    platforms: [
        // specify each minimum deployment requirement, 
        // otherwise the platform default minimum is used.
        .macOS(.v10_14), // .v10_14 Mojave, .v10_15 Catalina 
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // Realm
        .package(url:"https://github.com/realm/realm-cocoa", from: "3.21.0"),
        // .package( url: " ", .branch("master") )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RealmSPMXcode",
            dependencies: ["RealmSwift"]),
        .testTarget(
            name: "RealmSPMXcodeTests",
            dependencies: ["RealmSPMXcode"]),
    ],
    swiftLanguageVersions: [.v5],
    cxxLanguageStandard: .cxx14
)
