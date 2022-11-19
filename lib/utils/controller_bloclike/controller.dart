import 'dart:async';

import 'package:flutter/cupertino.dart';

class Controller<Event, State> extends InheritedNotifier<ValueNotifier<State>> {
  final Map<Type, dynamic> _handlers = {};

  Controller({required State initialState, required super.child, super.key})
      : super(notifier: ValueNotifier(initialState));

  State get state => notifier!.value;

  on<E extends Event>(
    FutureOr<void> Function(
      E event,
      void Function(State) emit,
    )
        listener,
  ) {
    final hasListener = _handlers[E] != null;
    if (hasListener) throw StateError('Handler $E already registered');
    _handlers[E] = listener;
  }

  add(Event event) {
    final handler = _handlers[event.runtimeType];
    if (handler == null) {
      throw StateError(
          'Could not find a handler to ${event.runtimeType} event');
    }
    _handlers.forEach((key, listener) {
      if (key == event.runtimeType) listener(event, emit);
    });
  }

  emit(State newState) {
    if (state != newState) notifier!.value = newState;
  }

  static C of<C extends Controller>(BuildContext context) {
    final controller = context.dependOnInheritedWidgetOfExactType<C>();
    if (controller == null) {
      throw StateError('Could no find an instance of $C in the tree');
    }
    return controller;
  }
}
