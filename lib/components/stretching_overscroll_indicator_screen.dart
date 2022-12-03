// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:faker/faker.dart';

class StretchingOverscrollIndicatorScreen extends StatefulWidget {
  const StretchingOverscrollIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<StretchingOverscrollIndicatorScreen> createState() => _StretchingOverscrollIndicatorScreenState();
}

class _StretchingOverscrollIndicatorScreenState extends State<StretchingOverscrollIndicatorScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StretchingOverscrollIndicatorScreen'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text('Currently, this stretching effect is available only on Android devices. Android devices with OS version 12 or higher can see and feel this effect. You are unable to see & feel this effect on Android 12 below devices and any iOS device.'),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: 100,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(Faker().lorem.sentence()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
