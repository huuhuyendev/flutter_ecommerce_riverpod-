import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.chipLabel,
  });

  final String chipLabel;

  @override
  Widget build(BuildContext context) {
    return Chip(label: Text(chipLabel));
  }
}
