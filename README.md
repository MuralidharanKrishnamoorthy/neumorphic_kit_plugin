# Neumorphic Kit

A Flutter plugin for creating neumorphic UI components.

## Features

- NeumorphicContainer: A container with neumorphic styling.
- NeumorphicCard: A card with neumorphic styling.
- NeumorphicButton: A button with neumorphic styling.



## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  neumorphic_kit: ^0.1.0

```
## Then run 
flutter pub get

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
