import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_event.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_state.dart';

class BlocCounterBloc extends Bloc<BlocCounterEvent, BlocCounterState> {
  BlocCounterBloc() : super(const BlocCounterState(counter: 0)) {
    on<IncrementCounter>((event, emit) =>
        emit(state.copyWith(counter: state.counter + event.amount)));
    on<DecrementCounter>((event, emit) =>
        emit(state.copyWith(counter: state.counter - event.amount)));
  }
}
