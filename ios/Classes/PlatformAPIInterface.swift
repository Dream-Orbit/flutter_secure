// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol FlutterSecurePlatformAPI {
  func isRooted() throws -> Bool
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class FlutterSecurePlatformAPISetup {
  /// The codec used by FlutterSecurePlatformAPI.
  /// Sets up an instance of `FlutterSecurePlatformAPI` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: FlutterSecurePlatformAPI?) {
    let isRootedChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.FlutterSecurePlatformAPI.isRooted", binaryMessenger: binaryMessenger)
    if let api = api {
      isRootedChannel.setMessageHandler { _, reply in
        do {
          let result = try api.isRooted()
          reply(wrapResult(result))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      isRootedChannel.setMessageHandler(nil)
    }
  }
}
