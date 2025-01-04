import 'package:flutter/material.dart';
import '../themes/neumorphic_theme.dart';
import 'neumorphic_container.dart';

class NeumorphicButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final NeumorphicTheme theme;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Duration duration;

  const NeumorphicButton({
    Key? key,
    required this.child,
    required this.onPressed,
    NeumorphicTheme? theme,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.duration = const Duration(milliseconds: 150),
  })  : theme = theme ??
            const NeumorphicTheme(
              baseColor: Color(0xFFE0E5EC),
              shadowDarkColor: Color(0x4D000000), // 0.3 opacity
              shadowLightColor: Color(0xCCFFFFFF), // 0.8 opacity
              depth: 8.0,
              intensity: 0.5,
              lightSource: Offset(-1, -1),
            ),
        super(key: key);

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    widget.onPressed?.call();
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedContainer(
        duration: widget.duration,
        child: NeumorphicContainer(
          theme: widget.theme,
          borderRadius: widget.borderRadius,
          padding: widget.padding,
          isPressed: _isPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
