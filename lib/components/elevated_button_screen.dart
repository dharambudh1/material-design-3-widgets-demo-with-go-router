// Flutter imports:
import 'package:flutter/material.dart';

class ElevatedButtonScreen extends StatefulWidget {
  const ElevatedButtonScreen({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonScreen> createState() => _ElevatedButtonScreenState();
}

class _ElevatedButtonScreenState extends State<ElevatedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButtonScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: _showSnackBar,
            child: const Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }

  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Yep, this is a ElevatedButton'),
      ),
    );
  }
}
