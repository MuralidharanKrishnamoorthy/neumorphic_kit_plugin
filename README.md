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
import 'package:flutter/material.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicContainer(
                theme: theme,
                borderRadius: 16.0,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Neumorphic Container',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              NeumorphicCard(
                theme: theme,
                borderRadius: 16.0,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Neumorphic Card',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              NeumorphicButton(
                theme: theme,
                borderRadius: 16.0,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                onPressed: () {
                  print('Neumorphic Button Pressed');
                },
                child: Text(
                  'Neumorphic Button',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
