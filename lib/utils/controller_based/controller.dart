import 'package:flutter/cupertino.dart';

class Controller<State> extends InheritedNotifier<ValueNotifier<State>> {
  Controller({required State initialState, required super.child, super.key})
      : super(notifier: ValueNotifier(initialState));

  State get state => notifier!.value;
  set state(State newState) {
    if (newState != state) notifier!.value = newState;
  }

  static C of<C extends Controller>(BuildContext context) {
    final controller = context.dependOnInheritedWidgetOfExactType<C>();
    if (controller == null) {
      throw StateError('Could no find an instance of $C in the tree');
    }
    return controller;
  }
}
