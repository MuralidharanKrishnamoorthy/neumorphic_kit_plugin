import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'neumorphic_kit_platform_interface.dart';

/// An implementation of [NeumorphicKitPlatform] that uses method channels.
class MethodChannelNeumorphicKit extends NeumorphicKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('neumorphic_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
