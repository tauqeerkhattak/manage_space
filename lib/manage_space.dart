
import 'manage_space_platform_interface.dart';

class ManageSpace {

  ///
  /// Returns a boolean variable.
  /// If true, the app is opened by Pressing clear data button.
  /// If false, app is launched normally.
  ///
  static Future<bool> isFromManageSpaceEvent() {
    return ManageSpacePlatform.instance.isFromManageSpaceEvent();
  }
}
