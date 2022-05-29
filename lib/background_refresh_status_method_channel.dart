import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'background_refresh_status_platform_interface.dart';
import 'status.dart';

/// An implementation of [BackgroundRefreshStatusPlatform] that uses method channels.
class MethodChannelBackgroundRefreshStatus
    extends BackgroundRefreshStatusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('background_refresh_status');

  @override
  Future<Status> getStatus() async {
    final status = await methodChannel.invokeMethod<int>('getStatus');

    if (status == null) {
      throw PlatformException(
          code: 'getStatus', message: 'Could not retrieve background status');
    }

    return Status.values[status];
  }
}
