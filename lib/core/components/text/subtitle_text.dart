import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText(
    this.text, {
    super.key,
    this.style
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.titleLarge;
    return Text(
      text,
      style: baseStyle?.merge(style),
    );
  }
}