import 'package:calculator_just_simulate/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyle {
  static const TextStyle mainNumber = TextStyle(
    color: AppColors.black,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.fade,
  );

  static const TextStyle result = TextStyle(
    color: AppColors.black,
    fontSize: 30.0,
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.fade,
  );

  static const TextStyle number = TextStyle(
    color: AppColors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.fade,
  );

  static const TextStyle tealSymbols = TextStyle(
    color: AppColors.teal,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.fade,
  );

  static const TextStyle redSymbols = TextStyle(
    color: AppColors.red,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.fade,
  );
}
