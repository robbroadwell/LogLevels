![LogLevels](README/loglevels.png)

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift 4.2.x](https://img.shields.io/badge/Swift-4.2.x-orange.svg)](https://github.com/apple/swift)
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://opensource.org/licenses/MIT)

LogLevels is the secure logging framework for Swift.

## Features

- [x] Logs include thread, file, and function.
- [x] Supports multiple logging levels (i.e. see all logs, only the critical errors, etc).
- [x] Disables all logging for production versions.

## Requirements

- iOS 10.0+
- Xcode 10.0+
- Swift 4.2+

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. 

To integrate **LogLevels** into your Xcode project using Carthage, specify it in your `Cartfile`:

```ruby
github "robbroadwell/LogLevels"
```

Run `$ carthage update` to build the framework and drag the built `LogLevels.framework` into your Xcode project.
