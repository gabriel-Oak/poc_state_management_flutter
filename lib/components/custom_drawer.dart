import 'package:flutter/material.dart';
import 'package:poc_state_menagement/pages/bloc_counter/bloc_counter_page.dart';
import 'package:poc_state_menagement/pages/home/home.dart';
import 'package:poc_state_menagement/pages/inherited_bloclike/inherited_bloclike_page.dart';
import 'package:poc_state_menagement/pages/inherited_counter/inherited_counter_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Choose your menager'),
          ),
          ListTile(
            title: const Text('HOME'),
            onTap: () => _navigateTo(context, const HomePage()),
          ),
          ListTile(
            title: const Text('BLoC'),
            onTap: () => _navigateTo(context, const BlocCounterPage()),
          ),
          ListTile(
            title: const Text('InheritedNotifier'),
            onTap: () => _navigateTo(context, const InhertedCounterPage()),
          ),
          ListTile(
            title: const Text('InheritedNotifier BLoClike'),
            onTap: () => _navigateTo(context, const InhertedBlocLikePage()),
          ),
        ],
      ),
    );
  }

  _navigateTo(BuildContext context, Widget page) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
}
