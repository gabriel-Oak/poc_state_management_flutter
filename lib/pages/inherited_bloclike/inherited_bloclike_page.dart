import 'package:flutter/material.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_content.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_controller.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_event.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_state.dart';

class InhertedBlocLikePage extends StatelessWidget {
  const InhertedBlocLikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedBloclikeController(
      initialState: Loading(),
      child: const InheritedBloclikeContent(),
    )..add(StartLoading());
  }
}
