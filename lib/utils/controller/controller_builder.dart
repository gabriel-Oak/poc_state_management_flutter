import 'package:flutter/src/widgets/framework.dart';
import 'package:poc_state_menagement/utils/controller/controller.dart';

class ControllerBuilder<ControllerType extends Controller>
    extends StatelessWidget {
  final Widget Function(BuildContext context, ControllerType controller)
      builder;
  const ControllerBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final controller =
        context.dependOnInheritedWidgetOfExactType<ControllerType>();
    if (controller == null) {
      throw UnimplementedError(
          'controller of type $Controller not on the tree');
    }

    return builder(context, controller);
  }
}
