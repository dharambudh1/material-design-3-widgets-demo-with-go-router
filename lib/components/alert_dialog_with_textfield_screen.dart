// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:go_router_demo/route/app_route.dart';

class AlertDialogWithTextFieldScreen extends StatefulWidget {
  const AlertDialogWithTextFieldScreen({Key? key}) : super(key: key);

  @override
  State<AlertDialogWithTextFieldScreen> createState() =>
      _AlertDialogWithTextFieldScreenState();
}

class _AlertDialogWithTextFieldScreenState
    extends State<AlertDialogWithTextFieldScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialogWithTextFieldScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: _showMyDialog,
            child: const Text('Show AlertDialog With TextField'),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Form(
          key: _formKey,
          child: AlertDialog(
            actionsPadding: const EdgeInsets.only(left: 18),
            title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('This is a demo alert dialog with text field.'),
                  Text('Would you like to pass some message to next screen?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  label: Text('Message'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some message';
                  }
                  return null;
                },
              ),
              TextButton(
                child: const Text('Send'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    GoRouter.of(context).navigator?.pop(context);
                    GoRouter.of(context).push(AppRoute.newScreenWithArgs, extra: controller.value.text);
                    controller.text = '';
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
