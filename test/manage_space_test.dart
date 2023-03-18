import 'package:flutter_test/flutter_test.dart';
import 'package:manage_space/manage_space.dart';
import 'package:manage_space/manage_space_platform_interface.dart';
import 'package:manage_space/manage_space_method_channel.dart';

void main() {
  final ManageSpacePlatform initialPlatform = ManageSpacePlatform.instance;

  test('$MethodChannelManageSpace is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelManageSpace>());
  });

  test('isFromManageSpaceEvent', () async {

    expect(await ManageSpace.isFromManageSpaceEvent(), true);
  });
}
