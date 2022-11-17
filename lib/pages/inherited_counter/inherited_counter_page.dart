import 'package:flutter/material.dart';
import 'package:poc_state_menagement/pages/inherited_counter/inherited_counter_content.dart';
import 'package:poc_state_menagement/pages/inherited_counter/inherted_counter_controller.dart';

class InhertedCounterPage extends StatelessWidget {
  const InhertedCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedController(
      initialValue: 0,
      child: const InheritedContent(),
    );
  }
}
