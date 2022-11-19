import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_bloc.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_event.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_state.dart';

class BlocCounterContent extends StatelessWidget {
  const BlocCounterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocCounterBloc, BlocCounterState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('BLoC'),
        ),
        body: Center(
          child: Text('BLOC COUNTER: ${state.counter}'),
        ),
        drawer: const CustomDrawer(),
        floatingActionButton: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => BlocProvider.of<BlocCounterBloc>(context)
                  .add(const IncrementCounter(1)),
              heroTag: 'bloc1',
              child: const Icon(Icons.add),
            ),
            Container(height: 16),
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.red,
              onPressed: () => BlocProvider.of<BlocCounterBloc>(context)
                  .add(const DecrementCounter(1)),
              heroTag: 'bloc2',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
