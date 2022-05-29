import Flutter
import UIKit

public class SwiftBackgroundRefreshStatusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "background_refresh_status", binaryMessenger: registrar.messenger())
    let instance = SwiftBackgroundRefreshStatusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      result(UIApplication.shared.backgroundRefreshStatus.rawValue)
  }
}
