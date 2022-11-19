import 'package:flutter/material.dart';
import 'package:poc_state_menagement/components/custom_drawer.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_page.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_page.dart';
import 'package:poc_state_menagement/pages/inherited_controller_based/inherited_controller_based_page.dart';
import 'package:poc_state_menagement/pages/inherited_counter/inherited_counter_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC State Menagement'),
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.3,
          ),
          children: [
            GestureDetector(
              onTap: () => _navigateTo(context, const BlocCounterPage()),
              child: Card(
                elevation: 2.0,
                child: Center(
                  child: Text(
                    'BLoC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _navigateTo(context, const InhertedCounterPage()),
              child: Card(
                elevation: 2.0,
                child: Center(
                  child: Text(
                    'InheritedNotifier',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _navigateTo(context, const InhertedBlocLikePage()),
              child: Card(
                elevation: 2.0,
                child: Center(
                    child: Text(
                  'InheritedNotifier BLoClike',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 20,
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  _navigateTo(context, const InheritedControllerBasedPage()),
              child: Card(
                elevation: 2.0,
                child: Center(
                    child: Text(
                  'InheritedNotifier ControllerBased',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 20,
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }

  _navigateTo(BuildContext context, Widget page) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
}
