import 'package:equatable/equatable.dart';

abstract class InheritedBloclikeState extends Equatable {
  const InheritedBloclikeState() : super();

  @override
  List<Object?> get props => [];
}

class Loading extends InheritedBloclikeState {}

class Loaded extends InheritedBloclikeState {
  final int counter;
  final String? greetings;

  const Loaded({required this.counter, this.greetings});

  Loaded copyWith({String? greetings, int? counter}) {
    return Loaded(
      counter: counter ?? this.counter,
      greetings: greetings ?? this.greetings,
    );
  }

  @override
  List<Object?> get props => [counter, greetings];
}
