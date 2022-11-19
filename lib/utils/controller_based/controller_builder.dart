import 'package:flutter/material.dart';
import 'package:poc_state_menagement/utils/controller_based/controller.dart';

class ControllerBuilder<ControllerType extends Controller>
    extends StatelessWidget {
  final Widget Function(BuildContext context, ControllerType controller)
      builder;

  const ControllerBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final controller = Controller.of<ControllerType>(context);
    return builder(context, controller);
  }
}
