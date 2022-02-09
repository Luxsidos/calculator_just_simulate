import 'package:calculator_just_simulate/core/theme/app_color.dart';
import 'package:calculator_just_simulate/core/theme/app_text_style.dart';
import 'package:calculator_just_simulate/data/bloc/result_bloc.dart';
import 'package:calculator_just_simulate/ui/home/components/calculate_symbols.dart';
import 'package:calculator_just_simulate/ui/phone_number/phone_number_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isPressed = List.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.login,
              color: AppColors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider<ResultBloc>.value(
                  value: context.read<ResultBloc>(),
                  child: PhoneNumberPage(),
                ),
              ),
            ),
          );
        }),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<ResultBloc, ResultState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(28.0),
                    alignment: Alignment.bottomRight,
                    color: AppColors.white,
                    child: Text(
                      state.isFirst
                          ? "${state.numberOne.toInt()}"
                          : "${state.numberOne.toInt()} ${state.symbol} ${state.numberTwo == 0 ? "" : state.numberTwo.toInt()}",
                      style: AppTextStyle.result,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                Container(
                  color: AppColors.white2,
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(12.0),
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: isPressed.length,
                    itemBuilder: (context, index) {
                      return CalCulateSymbols(
                        isPressed: isPressed,
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
