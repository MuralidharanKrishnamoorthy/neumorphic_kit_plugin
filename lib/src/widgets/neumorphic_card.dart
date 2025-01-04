import 'package:flutter/material.dart';
import '../themes/neumorphic_theme.dart';
import 'neumorphic_container.dart';

class NeumorphicCard extends StatelessWidget {
  final Widget child;
  final NeumorphicTheme theme;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const NeumorphicCard({
    Key? key,
    required this.child,
    required this.theme,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(16.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      theme: theme,
      borderRadius: borderRadius,
      padding: padding,
      child: child,
    );
  }
}
