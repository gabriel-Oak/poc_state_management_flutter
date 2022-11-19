import 'package:flutter/material.dart';
import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_content.dart';
import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_controller.dart';
import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_state.dart';

class InheritedControllerBasedPage extends StatelessWidget {
  const InheritedControllerBasedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedControllerBasedController(
      initialState: const InheritedControllerBasedState(counter: 0),
      child: const InheritedControllerBasedContent(),
    )..start();
  }
}
