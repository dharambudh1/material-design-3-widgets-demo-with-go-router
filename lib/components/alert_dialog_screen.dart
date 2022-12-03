// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialogScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: _showMyDialog,
            child: const Text('Show AlertDialog'),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () => GoRouter.of(context).navigator?.pop(context),
            ),
          ],
        );
      },
    );
  }
}
