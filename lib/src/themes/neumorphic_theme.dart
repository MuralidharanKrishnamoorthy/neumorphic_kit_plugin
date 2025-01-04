import 'package:flutter/material.dart';

class NeumorphicTheme {
  final Color baseColor;
  final Color shadowDarkColor;
  final Color shadowLightColor;
  final double depth;
  final double intensity;
  final Offset lightSource;

  const NeumorphicTheme({
    required this.baseColor,
    required this.shadowDarkColor,
    required this.shadowLightColor,
    required this.depth,
    required this.intensity,
    required this.lightSource,
  });

  List<BoxShadow> get outerShadows => [
        BoxShadow(
          color: shadowDarkColor,
          offset: Offset(depth * lightSource.dx, depth * lightSource.dy),
          blurRadius: depth,
        ),
        BoxShadow(
          color: shadowLightColor,
          offset: Offset(-depth * lightSource.dx, -depth * lightSource.dy),
          blurRadius: depth,
        ),
      ];

  List<BoxShadow> get innerShadows => [
        BoxShadow(
          color: shadowLightColor,
          offset: Offset(depth * lightSource.dx, depth * lightSource.dy),
          blurRadius: depth,
        ),
        BoxShadow(
          color: shadowDarkColor,
          offset: Offset(-depth * lightSource.dx, -depth * lightSource.dy),
          blurRadius: depth,
        ),
      ];
}
