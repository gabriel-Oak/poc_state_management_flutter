import 'package:flutter/material.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/inherited_counter/inherted_counter_controller.dart';

class InheritedContent extends StatelessWidget {
  const InheritedContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = InheritedController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherted Counter'),
      ),
      body: Center(
        child: Text('Inherted Counter: ${controller.counter}'),
      ),
      drawer: const CustomDrawer(),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => controller.increment(1),
            child: const Icon(Icons.add),
          ),
          Container(height: 16),
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.red,
            onPressed: () => controller.decrement(1),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
