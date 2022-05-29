import 'status.dart';
import 'background_refresh_status_no_op.dart';

// This is a workaround for a bug
import 'background_refresh_status_platform_interface.dart';
export 'background_refresh_status_no_op.dart';

export 'status.dart';

abstract class BackgroundRefreshStatus {
  /// iOS: Indicates whether the app can refresh content when running in the background.
  /// Android: no-op, always returns `Status.available` for ergonomical reasons.
  ///
  /// See https://developer.apple.com/documentation/uikit/uiapplication/1622994-backgroundrefreshstatus
  static Future<Status> get status =>
      BackgroundRefreshStatusPlatform.instance.getStatus();
}
