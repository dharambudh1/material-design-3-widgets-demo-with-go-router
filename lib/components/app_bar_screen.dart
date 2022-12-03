// Flutter imports:
import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBarScreen'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.adb),
            tooltip: 'Show snack-bar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snack-bar')));
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text('☝️ AppBar'),
        ),
      ),
    );
  }
}
