import 'package:calculator_just_simulate/core/theme/app_color.dart';
import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0.0,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: AppColors.black),
    bodyText2: TextStyle(color: AppColors.black),
  ),
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.white,
  iconTheme: const IconThemeData(color: AppColors.black),
);
