import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'neumorphic_kit_method_channel.dart';

abstract class NeumorphicKitPlatform extends PlatformInterface {
  /// Constructs a NeumorphicKitPlatform.
  NeumorphicKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static NeumorphicKitPlatform _instance = MethodChannelNeumorphicKit();

  /// The default instance of [NeumorphicKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelNeumorphicKit].
  static NeumorphicKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NeumorphicKitPlatform] when
  /// they register themselves.
  static set instance(NeumorphicKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
