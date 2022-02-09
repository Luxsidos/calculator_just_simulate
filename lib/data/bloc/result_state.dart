part of 'result_bloc.dart';

@immutable
abstract class ResultState {
  int count, phoneNumber;
  double numberOne, numberTwo, result;
  bool isFirst;
  String symbol;
  ResultState(this.numberOne, this.numberTwo, this.result, this.symbol,
      this.isFirst, this.phoneNumber, this.count);
}

class ResultCalculateState extends ResultState {
  ResultCalculateState(double numberOne, double numberTwo, double result,
      String symbol, bool isFirst, int phoneNumber, int count)
      : super(numberOne, numberTwo, result, symbol, isFirst, phoneNumber, count);
}
