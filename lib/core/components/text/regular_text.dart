import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class RegularText extends StatelessWidget {
  const RegularText(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  factory RegularText.medium(String text, {TextStyle? style}) {
    return RegularText(text,
        style: const TextStyle(fontWeight: FontWeight.w500).merge(style));
  }

  factory RegularText.semiBold(String text, {TextStyle? style}) {
    return RegularText(text,
        style: const TextStyle(fontWeight: FontWeight.w600).merge(style));
  }

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.theme.textTheme.bodyMedium;

    return Text(
      text,
      style: baseStyle?.merge(style),
    );
  }
}
