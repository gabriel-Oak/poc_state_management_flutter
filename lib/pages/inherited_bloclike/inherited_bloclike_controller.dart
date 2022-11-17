import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_event.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_state.dart';
import 'package:poc_state_menagement/utils/controller/controller.dart';

class InheritedBloclikeController
    extends Controller<InheritedBloclikeEvent, InheritedBloclikeState> {
  InheritedBloclikeController({
    required super.child,
    required super.initialState,
    super.key,
  }) : super() {
    on<StartLoading>((event, emit) async {
      emit(Loading());
      await Future.delayed(const Duration(seconds: 2));
      emit(const Loaded(counter: 0));
    });

    on<FinishedLoading>((event, emit) {
      emit(const Loaded(counter: 0));
    });

    on<IncrementBloclike>((event, emit) {
      emit((state as Loaded)
          .copyWith(counter: (state as Loaded).counter + event.amount));
    });

    on<DecrementBloclike>((event, emit) {
      emit((state as Loaded)
          .copyWith(counter: (state as Loaded).counter - event.amount));
    });

    on<SetGreetings>((event, emit) {
      emit((event as Loaded).copyWith(greetings: event.greeting));
    });
  }
}
