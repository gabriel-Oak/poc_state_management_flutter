import 'package:flutter/src/widgets/framework.dart';
import 'package:poc_state_menagement/utils/controller_bloclike/controller.dart';

class ControllerBuilder<ControllerType extends Controller, State>
    extends StatelessWidget {
  final Widget Function(BuildContext context, State controller) builder;
  const ControllerBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final controller = Controller.of<ControllerType>(context);
    return builder(context, controller.state);
  }
}
