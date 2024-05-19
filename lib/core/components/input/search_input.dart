import 'package:flutter/material.dart';
import 'package:kasirsuper/core/components/input/input.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
    required this.hintText,
  });

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return RegularTextInput(hintText: hintText);
  }
}
