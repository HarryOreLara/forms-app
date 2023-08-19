import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //constructor
  CounterBloc() : super(const CounterState()) {
    //handlers
    //on<CounterIncreased>((event, emit) {
    //aca reaccionara cuando se llame al evento counterIncreased
    // emit(state.copyWith(
    //     counter: state.counter + event.value,
    //     transactionCount: state.transactionCount + 1));

    on<CounterIncreased>((event, emit) => _onCounterIncresead(event, emit));
    on<CounterReset>((event, emit) => _onCounterReset(event, emit));
  }

//Lista de handlers
  void _onCounterIncresead(CounterIncreased event, Emitter<CounterState> emit) {
    emit(state.copyWith(
        counter: state.counter + event.value,
        transactionCount: state.transactionCount + 1));
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      counter: 0,
    ));
  }

//Otra forma de llamar al bloc
  void increaseBy([int value = 1]) {
    add(CounterIncreased(value));
  }


  void resetCounter() {
    add( CounterReset());
  }
}
