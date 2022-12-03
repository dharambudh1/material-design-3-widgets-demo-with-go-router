// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:faker/faker.dart';

class MediumSliverAppBarScreen extends StatefulWidget {
  const MediumSliverAppBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MediumSliverAppBarScreen> createState() =>
      _MediumSliverAppBarScreenState();
}

class _MediumSliverAppBarScreenState extends State<MediumSliverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar.medium(
                title: const Text("Medium Sliver AppBar"),
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
