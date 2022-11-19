import 'package:equatable/equatable.dart';

class InheritedControllerBasedState extends Equatable {
  final int counter;
  final bool isLoading;

  const InheritedControllerBasedState({
    required this.counter,
    this.isLoading = false,
  }) : super();

  InheritedControllerBasedState copyWith({int? counter, bool? isLoading}) {
    return InheritedControllerBasedState(
      counter: counter ?? this.counter,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [counter, isLoading];
}
