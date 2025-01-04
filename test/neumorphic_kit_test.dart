import 'package:flutter_test/flutter_test.dart';
import 'package:neumorphic_kit/neumorphic_kit.dart';
import 'package:neumorphic_kit/neumorphic_kit_platform_interface.dart';
import 'package:neumorphic_kit/neumorphic_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNeumorphicKitPlatform
    with MockPlatformInterfaceMixin
    implements NeumorphicKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NeumorphicKitPlatform initialPlatform = NeumorphicKitPlatform.instance;

  test('$MethodChannelNeumorphicKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNeumorphicKit>());
  });

  test('getPlatformVersion', () async {
    NeumorphicKit neumorphicKitPlugin = NeumorphicKit();
    MockNeumorphicKitPlatform fakePlatform = MockNeumorphicKitPlatform();
    NeumorphicKitPlatform.instance = fakePlatform;

    expect(await neumorphicKitPlugin.getPlatformVersion(), '42');
  });
}
