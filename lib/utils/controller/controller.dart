import 'dart:async';

import 'package:flutter/cupertino.dart';

class Controller<Event, State> extends InheritedNotifier<ValueNotifier<State>> {
  final Map<Type, dynamic> listeners = {};

  Controller({required State initialState, required super.child, super.key})
      : super(notifier: ValueNotifier(initialState));

  State get state => notifier!.value;

  on<SpecificEvent extends Event>(
      FutureOr<void> Function(SpecificEvent event, void Function(State) emit)
          listener) {
    listeners[SpecificEvent] = listener;
  }

  add(Event event) {
    listeners.forEach((key, listener) {
      if (key == event.runtimeType) listener(event, emit);
    });
  }

  emit(State newState) {
    notifier!.value = newState;
  }
}
