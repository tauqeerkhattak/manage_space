import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'manage_space_platform_interface.dart';

/// An implementation of [ManageSpacePlatform] that uses method channels.
class MethodChannelManageSpace extends ManageSpacePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('manage_space');

  @override
  Future<bool> isFromManageSpaceEvent() async {
    final isFromManageSpace = await methodChannel.invokeMethod<bool>('isFromManageSpaceEvent');
    return isFromManageSpace ?? false;
  }
}
