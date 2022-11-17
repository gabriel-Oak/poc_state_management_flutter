import 'package:flutter/material.dart';

class InheritedController extends InheritedNotifier<ValueNotifier<int>> {
  InheritedController({
    super.key,
    required super.child,
    required int initialValue,
  }) : super(notifier: ValueNotifier(initialValue));

  static InheritedController of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedController>()!;

  int get counter => notifier!.value;

  increment(int amount) {
    notifier!.value += amount;
  }

  decrement(int amount) {
    notifier!.value -= amount;
  }
}
