import 'package:flutter/material.dart';
import '../themes/neumorphic_theme.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final NeumorphicTheme theme;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final bool isPressed;

  const NeumorphicContainer({
    Key? key,
    required this.child,
    required this.theme,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(16.0),
    this.isPressed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: theme.baseColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: isPressed ? theme.innerShadows : theme.outerShadows,
      ),
      child: child,
    );
  }
}
