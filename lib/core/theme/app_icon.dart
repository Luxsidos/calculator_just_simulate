import 'package:calculator_just_simulate/core/theme/app_color.dart';
import 'package:calculator_just_simulate/core/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class AppIcon {
  static const Text ac = Text("AC", style: AppTextStyle.tealSymbols);

  static const Text plusMinus = Text("+/-", style: AppTextStyle.tealSymbols);

  static const Text present = Text("%", style: AppTextStyle.tealSymbols);

  static const Icon division = Icon(
    CupertinoIcons.divide,
    color: AppColors.red,
    size: 20.0,
  );

  static const Icon multiply = Icon(
    CupertinoIcons.multiply,
    color: AppColors.red,
    size: 20.0,
  );

  static const Icon minus = Icon(
    CupertinoIcons.minus,
    color: AppColors.red,
    size: 20.0,
  );

  static const Icon plus = Icon(
    CupertinoIcons.plus,
    color: AppColors.red,
    size: 20.0,
  );

  static const Icon equal = Icon(
    CupertinoIcons.equal,
    color: AppColors.red,
    size: 20.0,
  );

  static const Icon refresh = Icon(
    CupertinoIcons.refresh_bold,
    color: AppColors.red,
    size: 20.0,
  );

  static const Text dod = Text(".", style: AppTextStyle.result);

}
