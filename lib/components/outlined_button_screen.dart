// Flutter imports:
import 'package:flutter/material.dart';

class OutlinedButtonScreen extends StatefulWidget {
  const OutlinedButtonScreen({Key? key}) : super(key: key);

  @override
  State<OutlinedButtonScreen> createState() => _OutlinedButtonScreenState();
}

class _OutlinedButtonScreenState extends State<OutlinedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutlinedButtonScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Theme.of(context).primaryColor,
                style: BorderStyle.solid,
              ),
            ),
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
        content: Text('Yep, this is a OutlinedButton'),
      ),
    );
  }
}
