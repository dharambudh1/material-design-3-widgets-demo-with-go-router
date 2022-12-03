// Dart imports:
import 'dart:developer';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:go_router_demo/components/fade_indexed_stack.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentPageIndex = 0;

  final List<Widget> _pageList = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  List<Widget> get pageList => _pageList;

  final List<Widget> _widgetList = [
    const NavigationDestination(
      icon: Icon(Icons.explore),
      label: 'Explore',
    ),
    const NavigationDestination(
      icon: Icon(Icons.commute),
      label: 'Commute',
    ),
    const NavigationDestination(
      selectedIcon: Icon(Icons.bookmark),
      icon: Icon(Icons.bookmark_border),
      label: 'Saved',
    ),
  ];

  List<Widget> get widgetList => _widgetList;

  onTap(int index) {
    currentPageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBarScreen'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: onTap,
        selectedIndex: currentPageIndex,
        destinations: widgetList,
      ),
      body: SafeArea(
        child: FadeIndexedStack(
          index: currentPageIndex,
          children: pageList,
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
    log('Page 1 initState');
  }

  @override
  void dispose() {
    log('Page 1 dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Page 1 build');
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text('Page 1'),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    super.initState();
    log('Page 2 initState');
  }

  @override
  void dispose() {
    log('Page 2 dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Page 2 build');
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text('Page 2'),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  void initState() {
    super.initState();
    log('Page 3 initState');
  }

  @override
  void dispose() {
    log('Page 3 dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Page 3 build');
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Page 3'),
    );
  }
}
