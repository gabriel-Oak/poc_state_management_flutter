import 'package:flutter/material.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_controller.dart';
import 'package:poc_state_menagement/utils/controller_based/controller_builder.dart';

class InheritedControllerBasedContent extends StatelessWidget {
  const InheritedControllerBasedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ControllerBuilder<InheritedControllerBasedController>(
      builder: (context, controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Inherited BLoCLike'),
        ),
        body: Center(
          child: !controller.state.isLoading
              ? Text('Inherited BlocLike: ${controller.state.counter}')
              : const CircularProgressIndicator(),
        ),
        drawer: const CustomDrawer(),
        floatingActionButton: !controller.state.isLoading
            ? Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () => controller.increment(1),
                    heroTag: 'controllerb1',
                    child: const Icon(Icons.add),
                  ),
                  Container(height: 16),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.red,
                    onPressed: () => controller.decrement(2),
                    heroTag: 'controllerb2',
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            : Container(),
      ),
    );
  }
}
