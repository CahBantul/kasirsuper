import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasirsuper/core/core.dart';

class RegularTextInput extends StatelessWidget {
  const RegularTextInput({
    super.key,
    required this.hintText,
    this.controller,
    this.enabled = true,
    this.inputFormatters,
    this.maxLines,
    this.minLines,
  });

  final String hintText;
  final TextEditingController? controller;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(AppIcons.search),
      ),
    );
  }
}
