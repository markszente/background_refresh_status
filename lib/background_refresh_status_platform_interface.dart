import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'background_refresh_status_method_channel.dart';
import 'status.dart';

abstract class BackgroundRefreshStatusPlatform extends PlatformInterface {
  /// Constructs a BackgroundRefreshStatusPlatform.
  BackgroundRefreshStatusPlatform() : super(token: _token);

  static final Object _token = Object();

  static BackgroundRefreshStatusPlatform _instance =
      MethodChannelBackgroundRefreshStatus();

  /// The default instance of [BackgroundRefreshStatusPlatform] to use.
  ///
  /// Defaults to [MethodChannelBackgroundRefreshStatus].
  static BackgroundRefreshStatusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BackgroundRefreshStatusPlatform] when
  /// they register themselves.
  static set instance(BackgroundRefreshStatusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Status> getStatus() {
    throw UnimplementedError('getStatus() has not been implemented');
  }
}
