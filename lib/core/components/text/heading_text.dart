import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(
    this.text, {
    super.key,
    this.style
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.headlineLarge;
    return Text(
      text,
      style: baseStyle?.merge(style),
    );
  }
}