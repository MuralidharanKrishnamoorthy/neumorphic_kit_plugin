// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/to/pubspec-plugin-platforms.

import 'neumorphic_kit_platform_interface.dart';
export 'src/themes/neumorphic_theme.dart';
export 'src/widgets/neumorphic_button.dart';
export 'src/widgets/neumorphic_card.dart';
export 'src/widgets/neumorphic_container.dart';

class NeumorphicKit {
  Future<String?> getPlatformVersion() {
    return NeumorphicKitPlatform.instance.getPlatformVersion();
  }
}
