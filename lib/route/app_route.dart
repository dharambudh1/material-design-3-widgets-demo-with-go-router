// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:go_router_demo/components/alert_dialog_screen.dart';
import 'package:go_router_demo/components/alert_dialog_with_textfield_screen.dart';
import 'package:go_router_demo/components/app_bar_screen.dart';
import 'package:go_router_demo/components/card_screen.dart';
import 'package:go_router_demo/components/elevated_button_screen.dart';
import 'package:go_router_demo/components/fab_button_screen.dart';
import 'package:go_router_demo/components/large_sliver_appbar.dart';
import 'package:go_router_demo/components/material_screen.dart';
import 'package:go_router_demo/components/medium_sliver_appbar.dart';
import 'package:go_router_demo/components/navigation_bar_screen.dart';
import 'package:go_router_demo/components/navigation_rail_screen.dart';
import 'package:go_router_demo/components/outlined_button_screen.dart';
import 'package:go_router_demo/components/simple_dialog_screen.dart';
import 'package:go_router_demo/components/stretching_overscroll_indicator_screen.dart';
import 'package:go_router_demo/components/text_button_screen.dart';
import 'package:go_router_demo/screens/home_screen.dart';
import 'package:go_router_demo/screens/new_screen_with_args.dart';

class AppRoute {
  static const String home = '/';
  static const String alertDialogScreen = '/AlertDialogScreen';
  static const String alertDialogWithTextFieldScreen = '/AlertDialogWithTextFieldScreen';
  static const String appBarScreen = '/AppBarScreen';
  static const String cardScreen = '/CardScreen';
  static const String elevatedButtonScreen = '/ElevatedButtonScreen';
  static const String fabButtonScreen = '/FabButtonScreen';
  static const String outlinedButtonScreen = '/OutlinedButtonScreen';
  static const String textButtonScreen = '/TextButtonScreen';
  static const String stretchingOverscrollIndicatorScreen = '/StretchingOverscrollIndicatorScreen';
  static const String navigationBarScreen = '/NavigationBarScreen';
  static const String navigationRailScreen = '/NavigationRailScreen';
  static const String materialScreen = '/MaterialScreen';
  static const String simpleDialogScreen = '/SimpleDialogScreen';
  static const String newScreenWithArgs = '/NewScreenWithArgs';
  static const String mediumSliverAppBarScreen = '/MediumSliverAppBarScreen';
  static const String largeSliverAppBarScreen = '/LargeSliverAppBarScreen';

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: AppRoute.home,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage();
        },
      ),
      GoRoute(
        path: AppRoute.alertDialogScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AlertDialogScreen();
        },
      ),
      GoRoute(
        path: AppRoute.alertDialogWithTextFieldScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AlertDialogWithTextFieldScreen();
        },
      ),
      GoRoute(
        path: AppRoute.appBarScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const AppBarScreen();
        },
      ),
      GoRoute(
        path: AppRoute.cardScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const CardScreen();
        },
      ),
      GoRoute(
        path: AppRoute.elevatedButtonScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ElevatedButtonScreen();
        },
      ),
      GoRoute(
        path: AppRoute.fabButtonScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const FabButtonScreen();
        },
      ),
      GoRoute(
        path: AppRoute.textButtonScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const TextButtonScreen();
        },
      ),
      GoRoute(
        path: AppRoute.outlinedButtonScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OutlinedButtonScreen();
        },
      ),
      GoRoute(
        path: AppRoute.stretchingOverscrollIndicatorScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const StretchingOverscrollIndicatorScreen();
        },
      ),
      GoRoute(
        path: AppRoute.navigationBarScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const NavigationBarScreen();
        },
      ),
      GoRoute(
        path: AppRoute.navigationRailScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const NavigationRailScreen();
        },
      ),
      GoRoute(
        path: AppRoute.materialScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MaterialScreen();
        },
      ),
      GoRoute(
        path: AppRoute.simpleDialogScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SimpleDialogScreen();
        },
      ),
      GoRoute(
        path: AppRoute.newScreenWithArgs,
        builder: (BuildContext context, GoRouterState state) {
          return NewScreenWithArgs(
            arguments: state.extra,
          );
        },
      ),
      GoRoute(
        path: AppRoute.mediumSliverAppBarScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const MediumSliverAppBarScreen();
        },
      ),
      GoRoute(
        path: AppRoute.largeSliverAppBarScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LargeSliverAppBarScreen();
        },
      ),
    ],
    // errorBuilder: (context, state) => ErrorScreen(state.error),
  );
}
