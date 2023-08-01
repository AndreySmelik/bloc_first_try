import 'package:bloc_first_try/count_event.dart';
import 'package:bloc_first_try/count_state.dart';
import 'package:bloc_first_try/number.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(InitCountState(number: Number(count: 10))) {
    on<IncCountEvent>(onIncCountEvent);
  }

  onIncCountEvent(IncCountEvent event, Emitter<CountState> emit) {
    Number number = Number(count: 11);
    emit(IncCountState(number: number));
  }
}
