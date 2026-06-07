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
			url: "https://github.com/jkcoxson/idevice/releases/download/v0.1.62/idevice-xcframework-v0.1.62.zip",
			checksum: "47de7deb4af90a9e23b7b1c7f8d9c5765d990f1557408fb8020926663bc47538"
		),
		.target(
			name: "IDeviceSwift",
			dependencies: ["IDevice"]
		),
	]
)
