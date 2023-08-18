import 'package:flutter_bloc/flutter_bloc.dart';


//Este archivo es el que se utiliza

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 5));

  void increseBey(int value) {
    emit(state.copyWith(
      counter: state.counter + value,
      transactionCount: state.transactionCount + 1,
    ));
  }

  void reset() {
    emit(state.copyWith(
      counter: 0
    ));
  }



}
