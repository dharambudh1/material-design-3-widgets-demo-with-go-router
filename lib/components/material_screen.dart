// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:faker/faker.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({Key? key}) : super(key: key);

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialScreen'),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: 100,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 4,
                shadowColor: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(Faker().lorem.sentence()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
