import 'package:flutter/material.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_controller.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_event.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_state.dart';
import 'package:poc_state_menagement/utils/controller_bloclike/controller.dart';
import 'package:poc_state_menagement/utils/controller_bloclike/controller_builder.dart';

class InheritedBloclikeContent extends StatelessWidget {
  const InheritedBloclikeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ControllerBuilder<InheritedBloclikeController,
        InheritedBloclikeState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Inherited BLoCLike'),
        ),
        body: Center(
          child: state is Loaded
              ? Text('Inherited BlocLike: ${state.counter}')
              : const CircularProgressIndicator(),
        ),
        drawer: const CustomDrawer(),
        floatingActionButton: state is Loaded
            ? Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () =>
                        Controller.of<InheritedBloclikeController>(context)
                            .add(const IncrementBloclike(1)),
                    heroTag: 'bloclike1',
                    child: const Icon(Icons.add),
                  ),
                  Container(height: 16),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.red,
                    onPressed: () =>
                        Controller.of<InheritedBloclikeController>(context)
                            .add(const DecrementBloclike(1)),
                    heroTag: 'bloclike2',
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            : Container(),
      ),
    );
  }
}
