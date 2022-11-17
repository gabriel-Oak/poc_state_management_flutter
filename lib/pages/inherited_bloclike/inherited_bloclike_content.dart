import 'package:flutter/material.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_controller.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_event.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_state.dart';
import 'package:poc_state_menagement/utils/controller/controller_builder.dart';

class InheritedBloclikeContent extends StatelessWidget {
  const InheritedBloclikeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ControllerBuilder<InheritedBloclikeController>(
      builder: (context, controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Inherted BLoCLiker'),
        ),
        body: Center(
          child: controller.state is Loaded
              ? Text(
                  'Inherted BlocLike: ${(controller.state as Loaded).counter}')
              : const CircularProgressIndicator(),
        ),
        drawer: const CustomDrawer(),
        floatingActionButton: controller.state is Loaded
            ? Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () => controller.add(const IncrementBloclike(1)),
                    child: const Icon(Icons.add),
                  ),
                  Container(height: 16),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.red,
                    onPressed: () => controller.add(const DecrementBloclike(1)),
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            : Container(),
      ),
    );
  }
}
