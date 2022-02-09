import 'package:calculator_just_simulate/core/custom_widgets/neumorphism/neumorphism_shadow.dart';
import 'package:calculator_just_simulate/core/theme/app_color.dart';
import 'package:calculator_just_simulate/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final bool isPressed;
  final Widget title;
  const CalculateButton(
      {required this.isPressed, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      margin: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: isPressed ? null : neumorphismShadow,
      ),
      child: title
    );
  }
}
