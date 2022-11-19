import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_state.dart';
import 'package:poc_state_menagement/utils/controller_based/controller.dart';

class InheritedControllerBasedController
    extends Controller<InheritedControllerBasedState> {
  InheritedControllerBasedController({
    required super.child,
    required super.initialState,
    super.key,
  }) : super();

  increment(int amount) {
    state = state.copyWith(counter: state.counter + amount);
  }

  decrement(int amount) {
    state = state.copyWith(counter: state.counter - amount);
  }

  start() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(isLoading: false);
  }
}
