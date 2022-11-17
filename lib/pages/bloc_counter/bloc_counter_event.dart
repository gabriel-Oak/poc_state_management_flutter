import 'package:equatable/equatable.dart';

abstract class BlocCounterEvent extends Equatable {
  const BlocCounterEvent([List props = const []]) : super();
}

class IncrementCounter extends BlocCounterEvent {
  final int amount;

  const IncrementCounter(this.amount) : super();

  @override
  List<Object?> get props => [amount];
}

class DecrementCounter extends BlocCounterEvent {
  final int amount;

  const DecrementCounter(this.amount) : super();

  @override
  List<Object?> get props => [amount];
}
