import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(ResultCalculateState(0, 0, 0, "", true, 321456789, 1)) {
    on<ResultCalculateEvent>((event, emit) {
      double currentResult;
      switch (state.symbol) {
        case "-":
          currentResult = state.numberOne - state.numberTwo;
          break;
        case "+":
          currentResult = state.numberOne + state.numberTwo;
          break;
        case "*":
          currentResult = state.numberOne * state.numberTwo;
          break;
        case "/":
          currentResult = state.numberOne / state.numberTwo;
          break;
        case "%":
          currentResult = (state.numberOne * state.numberTwo) / 100.0;
          break;
        default:
          currentResult = 0.0;
          break;
      }
      double result = state.count == 3 ? state.phoneNumber.toDouble() :currentResult ;

      emit(ResultCalculateState(result, 0, result, "", true,
          state.phoneNumber, state.count + 1));
    });

    on<SymbolEvent>((event, emit) {
      emit(ResultCalculateState(state.numberOne, state.numberTwo, state.result,
          event.symbol, false, state.phoneNumber, state.count));
    });

    on<NumberOneEvent>((event, emit) {
      if (state.numberOne.toString().length < 15) {
        emit(ResultCalculateState(event.number, state.numberTwo, state.result,
            state.symbol, state.isFirst, state.phoneNumber, state.count));
      }
    });

    on<NumberTwoEvent>((event, emit) {
      if (state.numberTwo.toString().length < 15) {
        emit(ResultCalculateState(state.numberOne, event.number, state.result,
            state.symbol, state.isFirst, state.phoneNumber, state.count));
      }
    });

    on<ACEvent>((event, emit) {
      emit(ResultCalculateState(0, 0, 0, "", true, state.phoneNumber, 1));
    });

    on<PhoneNumberEvent>((event, emit) {
      emit(ResultCalculateState(0, 0, 0, "", true, event.number, state.count));
    });
  }
}
