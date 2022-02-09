import 'package:calculator_just_simulate/core/theme/app_icon.dart';
import 'package:calculator_just_simulate/core/theme/app_text_style.dart';
import 'package:calculator_just_simulate/data/bloc/result_bloc.dart';
import 'package:calculator_just_simulate/ui/home/components/calculate_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalCulateSymbols extends StatefulWidget {
  final int index;
  final List<bool> isPressed;
  const CalCulateSymbols(
      {required this.isPressed, required this.index, Key? key})
      : super(key: key);

  @override
  State<CalCulateSymbols> createState() => _CalCulateSymbolsState();
}

class _CalCulateSymbolsState extends State<CalCulateSymbols> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultBloc, ResultState>(
      builder: (context, state) {
        ResultBloc event = BlocProvider.of<ResultBloc>(context);
        switch (widget.index) {
          case 4:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 7))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 7));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "7",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 5:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 8))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 8));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "8",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 6:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 9))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 9));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "9",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 8:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 4))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 4));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "4",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 9:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 5))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 5));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "5",
                  style: AppTextStyle.number,
                ),
              ),
            );

          case 10:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 6))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 6));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "6",
                  style: AppTextStyle.number,
                ),
              ),
            );

          case 12:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 1))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 1));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "1",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 13:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 2))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 2));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "2",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 14:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent((state.numberOne * 10) + 3))
                    : event.add(NumberTwoEvent((state.numberTwo * 10) + 3));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "3",
                  style: AppTextStyle.number,
                ),
              ),
            );
          case 17:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                state.isFirst
                    ? event.add(NumberOneEvent(state.numberOne * 10))
                    : event.add(NumberTwoEvent(state.numberTwo * 10));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: const Text(
                  "0",
                  style: AppTextStyle.number,
                ),
              ),
            );

          case 0:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(ACEvent());
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.ac,
              ),
            );
          case 1:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.plusMinus,
              ),
            );

          case 2:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(SymbolEvent("%"));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.present,
              ),
            );

          case 3:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(SymbolEvent("/"));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.division,
              ),
            );

          case 7:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(SymbolEvent("*"));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.multiply,
              ),
            );

          case 11:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(SymbolEvent("-"));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.minus,
              ),
            );

          case 15:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(SymbolEvent("+"));
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.plus,
              ),
            );
          case 19:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
                event.add(ResultCalculateEvent());
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.equal,
              ),
            );
          case 16:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.refresh,
              ),
            );

          default:
            return GestureDetector(
              onTap: () {
                _onPressedCalBtn(widget.index);
              },
              child: CalculateButton(
                isPressed: widget.isPressed[widget.index],
                title: AppIcon.dod,
              ),
            );
        }
      },
    );
  }

  void _onPressedCalBtn(int index) async {
    setState(() {
      widget.isPressed[index] = !widget.isPressed[index];
    });
    await Future.delayed(const Duration(milliseconds: 150));
    setState(() {
      widget.isPressed[index] = !widget.isPressed[index];
    });
  }
}
