import 'package:flutter/material.dart';

class ChoiceChipData {
  final String label;
  final bool isSelected;
  Color textColor;
  Color selectedColor;

  ChoiceChipData({
    required this.label,
    required this.isSelected,
    required this.textColor,
    required this.selectedColor,
  })
}