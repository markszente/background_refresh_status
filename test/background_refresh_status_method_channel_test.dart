import 'package:background_refresh_status/status.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:background_refresh_status/background_refresh_status_method_channel.dart';

void main() {
  MethodChannelBackgroundRefreshStatus platform =
      MethodChannelBackgroundRefreshStatus();
  const MethodChannel channel = MethodChannel('background_refresh_status');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '2';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getStatus', () async {
    expect(await platform.getStatus(), Status.available);
  });
}
