import 'package:equatable/equatable.dart';

class BlocCounterState extends Equatable {
  final int counter;

  const BlocCounterState({required this.counter}) : super();

  copyWith({int? counter}) =>
      BlocCounterState(counter: counter ?? this.counter);

  @override
  List<Object?> get props => [counter];
}
