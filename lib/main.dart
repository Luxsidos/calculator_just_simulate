import 'package:calculator_just_simulate/core/theme/app_theme.dart';
import 'package:calculator_just_simulate/data/bloc/result_bloc.dart';
import 'package:calculator_just_simulate/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResultBloc>(
      create: (context) => ResultBloc(),
      child: MaterialApp(
        title: 'just calculator',
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        home: const HomePage(),
      ),
    );
  }
}
