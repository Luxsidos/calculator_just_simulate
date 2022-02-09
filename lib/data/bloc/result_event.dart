part of 'result_bloc.dart';

@immutable
abstract class ResultEvent {}

class ResultCalculateEvent extends ResultEvent {}

class SymbolEvent extends ResultEvent {
  String symbol;
  SymbolEvent(this.symbol);
}

class NumberOneEvent extends ResultEvent {
  double number;
  NumberOneEvent(this.number);
}

class NumberTwoEvent extends ResultEvent {
  double number;
  NumberTwoEvent(this.number);
}

class PhoneNumberEvent extends ResultEvent {
  int number;
  PhoneNumberEvent(this.number);
}

class ACEvent extends ResultEvent {}
