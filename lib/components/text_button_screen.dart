// Flutter imports:
import 'package:flutter/material.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({Key? key}) : super(key: key);

  @override
  State<TextButtonScreen> createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextButtonScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: TextButton(
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
        content: Text('Yep, this is a TextButton'),
      ),
    );
  }
}
