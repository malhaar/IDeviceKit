// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "IDeviceKit",
	platforms: [
		.iOS(.v15),
		.macOS(.v12),
	],
	products: [
		.library(
			name: "IDevice",
			targets: ["IDevice"]
		),
		.library(
			name: "IDeviceSwift",
			targets: ["IDeviceSwift"]
		),
	],
	targets: [
		.binaryTarget(
			name: "IDevice",
			url: "https://github.com/malhaar/IDeviceKit/releases/download/v0.1.62-dynamic/IDevice-dynamic.xcframework.zip",
			checksum: "858f5bf749da442232a58df421d2830978ca295ddce7e9405484ceab7d2e191f"
		),
		.target(
			name: "IDeviceSwift",
			dependencies: ["IDevice"]
		),
	]
)
