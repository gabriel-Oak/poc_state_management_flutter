import 'package:equatable/equatable.dart';

abstract class InheritedBloclikeEvent extends Equatable {
  const InheritedBloclikeEvent() : super();

  @override
  List<Object?> get props => [];
}

class StartLoading extends InheritedBloclikeEvent {}

class FinishedLoading extends InheritedBloclikeEvent {}

class IncrementBloclike extends InheritedBloclikeEvent {
  final int amount;
  const IncrementBloclike(this.amount);

  @override
  List<Object?> get props => [amount];
}

class DecrementBloclike extends InheritedBloclikeEvent {
  final int amount;
  const DecrementBloclike(this.amount);

  @override
  List<Object?> get props => [amount];
}

class SetGreetings extends InheritedBloclikeEvent {
  final String greeting;
  const SetGreetings(this.greeting);

  @override
  List<Object?> get props => [greeting];
}
