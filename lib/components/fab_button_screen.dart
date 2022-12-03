// Flutter imports:
import 'package:flutter/material.dart';

class FabButtonScreen extends StatefulWidget {
  const FabButtonScreen({Key? key}) : super(key: key);

  @override
  State<FabButtonScreen> createState() => _FabButtonScreenState();
}

class _FabButtonScreenState extends State<FabButtonScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FabButtonScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showSnackBar,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(),
      ),
    );
  }

  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Yep, this is a FabButton'),
      ),
    );
  }
}
