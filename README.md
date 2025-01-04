# Neumorphic Kit

A Flutter plugin for creating neumorphic UI components.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/to/develop-plugins),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

The plugin project was generated without specifying the `--platforms` flag, no platforms are currently supported.
To add platforms, run `flutter create -t plugin --platforms <platforms> .` in this directory.
You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/to/pubspec-plugin-platforms.

## Usage

```dart
import 'package:neumorphic_kit/neumorphic_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = NeumorphicTheme(
      baseColor: Color(0xFFE0E5EC),
      shadowDarkColor: Color(0x4D000000),
      shadowLightColor: Color(0xCCFFFFFF),
      depth: 8.0,
      intensity: 0.5,
      lightSource: Offset(-1, -1),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Neumorphic Design')),
        body: Center(
          child: NeumorphicCard(
            theme: theme,
            child: Text('Neumorphic Card'),
          ),
        ),
      ),
    );
  }
}
