// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:go_router_demo/route/app_route.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Uri _gitHubRepo = Uri.parse('https://github.com/flutter/flutter/issues/91605');
  final Uri _flutterDev = Uri.parse('https://twitter.com/FlutterDev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('🥳'),
                      Expanded(
                        child: Text(
                          'Components that have been migrated to Material 3 are mentioned below...',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.alertDialogScreen),
                        child: const Text(
                          'AlertDialog',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.alertDialogWithTextFieldScreen),
                        child: const Text(
                          'AlertDialog with TextField',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(AppRoute.appBarScreen),
                        child: const Text(
                          'AppBar',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(AppRoute.cardScreen),
                        child: const Text(
                          'Card',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.simpleDialogScreen),
                        child: const Text(
                          'SimpleDialog',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.elevatedButtonScreen),
                        child: const Text(
                          'ElevatedButton',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(AppRoute.fabButtonScreen),
                        child: const Text(
                          'FloatingActionButton',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () =>
                            GoRouter.of(context).push(AppRoute.materialScreen),
                        child: const Text(
                          'Material',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.navigationBarScreen),
                        child: const Text(
                          'NavigationBar',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.navigationRailScreen),
                        child: const Text(
                          'NavigationRail',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.outlinedButtonScreen),
                        child: const Text(
                          'OutlinedButton',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.stretchingOverscrollIndicatorScreen),
                        child: const Text(
                          'StretchingOverscrollIndicator,\nreplacing the GlowingOverscrollIndicator',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.textButtonScreen),
                        child: const Text(
                          'TextButton',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.mediumSliverAppBarScreen),
                        child: const Text(
                          'Medium Sliver AppBar',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔘'),
                      GestureDetector(
                        onTap: () => GoRouter.of(context)
                            .push(AppRoute.largeSliverAppBarScreen),
                        child: const Text(
                          'Large Sliver AppBar',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('ℹ️️'),
                      Expanded(
                        child: Text(
                          'The Flutter team is currently working on Material Design 3 support for other components like, Icon button, Segmented button, Bottom app bar, Chips, Popup menus, Menu bars & Cascading menus, Drawer, Switch, Text fields, AppBar - medium & large variants, Time picker, Date picker, Material banner and many more.',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('📙️️'),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              const TextSpan(text: 'Follow the '),
                              TextSpan(
                                text: 'GitHub issue',
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl(_gitHubRepo);
                                  },
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: '@FlutterDev',
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl(_flutterDev);
                                  },
                              ),
                              const TextSpan(text: ' for additional updates.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri uri) async {
    try {
      if (!await launchUrl(uri)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not launch $uri'),
          ),
        );
        throw 'Could not launch $uri';
      }
    } catch (e) {
      if (Platform.isAndroid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
          ),
        );
      }
      return;
    }
  }
}
