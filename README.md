# Unity

## Features

- [x] Vector2
- [x] Vector3
- [x] Vector4
- [ ] Quaternion

## Requirements

- iOS 9.0+
- Xcode 8.1+
- Swift 3.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1.0+ is required to build Unity 1.0.0+.

To integrate Unity into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'Unity', :git => 'https://github.com/helbertt/Unity.git', :branch => 'master'
end
```

Then, run the following command:

```bash
$ pod install
```
