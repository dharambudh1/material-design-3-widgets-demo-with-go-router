// Flutter imports:
import 'package:flutter/material.dart';

class NewScreenWithArgs extends StatefulWidget {
  final Object? arguments;
  const NewScreenWithArgs({
    Key? key,
    this.arguments,
  }) : super(key: key);

  @override
  State<NewScreenWithArgs> createState() => _NewScreenWithArgsState();
}

class _NewScreenWithArgsState extends State<NewScreenWithArgs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen with Arguments'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Received arguments: ${widget.arguments.toString()}'),
        ),
      ),
    );
  }
}
