import 'status.dart';
import 'background_refresh_status_no_op.dart';

// This is a workaround for a
import 'background_refresh_status_platform_interface.dart';
export 'background_refresh_status_no_op.dart';

class BackgroundRefreshStatus {
  /// iOS: Indicates whether the app can refresh content when running in the background.
  /// Android: no-op, always returns `Status.available` for ergonomical reasons.
  ///
  /// See https://developer.apple.com/documentation/uikit/uiapplication/1622994-backgroundrefreshstatus
  Future<Status> getStatus() {
    return BackgroundRefreshStatusPlatform.instance.getStatus();
  }
}
