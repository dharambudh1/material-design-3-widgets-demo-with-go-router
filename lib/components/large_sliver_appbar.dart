// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:faker/faker.dart';

class LargeSliverAppBarScreen extends StatefulWidget {
  const LargeSliverAppBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LargeSliverAppBarScreen> createState() =>
      _LargeSliverAppBarScreenState();
}

class _LargeSliverAppBarScreenState extends State<LargeSliverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar.large(
                title: const Text("Large Sliver AppBar"),
              ),
            ];
          },
          body: ListView.builder(
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
      ),
    );
  }
}
