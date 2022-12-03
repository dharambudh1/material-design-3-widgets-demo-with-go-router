// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

enum Gender { male, female }

class SimpleDialogScreen extends StatefulWidget {
  const SimpleDialogScreen({Key? key}) : super(key: key);

  @override
  State<SimpleDialogScreen> createState() => _SimpleDialogScreenState();
}

class _SimpleDialogScreenState extends State<SimpleDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialogScreen'),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: _askedToLead,
            child: const Text('Show SimpleDialog'),
          ),
        ),
      ),
    );
  }

  Future<void> _askedToLead() async {
    Gender? gender = await showDialog<Gender>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select gender'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                GoRouter.of(context).navigator?.pop(Gender.male);
              },
              child: const Text('Male'),
            ),
            SimpleDialogOption(
              onPressed: () {
                GoRouter.of(context).navigator?.pop(Gender.female);
              },
              child: const Text('Female'),
            ),
          ],
        );
      },
    );

    switch (gender) {
      case Gender.male:
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Male selected'),
          ),
        );
        break;
      case Gender.female:
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Female selected'),
          ),
        );
        break;
      case null:
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Dismissed'),
          ),
        );
        break;
    }
  }
}
