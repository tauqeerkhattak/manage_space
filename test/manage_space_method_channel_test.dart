import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:manage_space/manage_space_method_channel.dart';

void main() {
  MethodChannelManageSpace platform = MethodChannelManageSpace();
  const MethodChannel channel = MethodChannel('manage_space');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('isFromManageSpaceEvent', () async {
    expect(await platform.isFromManageSpaceEvent(), false);
    expect(await platform.isFromManageSpaceEvent(), true);
  });
}
