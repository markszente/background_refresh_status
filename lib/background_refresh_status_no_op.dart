import 'package:background_refresh_status/background_refresh_status_platform_interface.dart';

import 'status.dart';

/// Do not import.
///
/// Auxiliary class for platforms other than iOS
class BackgroundRefreshStatusNoOp extends BackgroundRefreshStatusPlatform {
  static void registerWith() {
    BackgroundRefreshStatusPlatform.instance = BackgroundRefreshStatusNoOp();
  }

  @override
  Future<Status> getStatus() {
    return Future.value(Status.available);
  }
}
