import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_bloc.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_content.dart';

class BlocCounterPage extends StatelessWidget {
  const BlocCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCounterBloc(),
      child: const BlocCounterContent(),
    );
  }
}
