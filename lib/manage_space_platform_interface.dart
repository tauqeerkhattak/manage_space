import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'manage_space_method_channel.dart';

abstract class ManageSpacePlatform extends PlatformInterface {
  /// Constructs a ManageSpacePlatform.
  ManageSpacePlatform() : super(token: _token);

  static final Object _token = Object();

  static ManageSpacePlatform _instance = MethodChannelManageSpace();

  /// The default instance of [ManageSpacePlatform] to use.
  ///
  /// Defaults to [MethodChannelManageSpace].
  static ManageSpacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ManageSpacePlatform] when
  /// they register themselves.
  static set instance(ManageSpacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isFromManageSpaceEvent() {
    throw UnimplementedError('isFromManageSpaceEvent() has not been implemented.');
  }
}
