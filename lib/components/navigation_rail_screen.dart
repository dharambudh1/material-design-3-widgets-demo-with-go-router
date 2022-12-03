// Flutter imports:
import 'package:flutter/material.dart';

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({Key? key}) : super(key: key);

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationRailScreen'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                _selectedIndex = index;
                setState(() {});
              },
              labelType: NavigationRailLabelType.selected,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('First'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Third'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Center(
                child: Text('selectedIndex: $_selectedIndex'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
