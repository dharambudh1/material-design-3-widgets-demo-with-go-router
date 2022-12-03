// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:faker/faker.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardScreen'),
      ),
      body: SafeArea(
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
    );
  }
}
