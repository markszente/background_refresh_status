import 'package:background_refresh_status/status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:background_refresh_status/background_refresh_status.dart';
import 'package:background_refresh_status/background_refresh_status_platform_interface.dart';
import 'package:background_refresh_status/background_refresh_status_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBackgroundRefreshStatusPlatform
    with MockPlatformInterfaceMixin
    implements BackgroundRefreshStatusPlatform {
  @override
  Future<Status> getStatus() => Future.value(Status.available);
}

void main() {
  final BackgroundRefreshStatusPlatform initialPlatform =
      BackgroundRefreshStatusPlatform.instance;

  test('$MethodChannelBackgroundRefreshStatus is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelBackgroundRefreshStatus>());
  });

  test('getStatus', () async {
    BackgroundRefreshStatus backgroundRefreshStatusPlugin =
        BackgroundRefreshStatus();
    MockBackgroundRefreshStatusPlatform fakePlatform =
        MockBackgroundRefreshStatusPlatform();
    BackgroundRefreshStatusPlatform.instance = fakePlatform;

    expect(await backgroundRefreshStatusPlugin.getStatus(), Status.available);
  });
}
