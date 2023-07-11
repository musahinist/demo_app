import 'package:demo_app/features/reddit/cubit/reddit_cubit.dart';
import 'package:demo_app/features/reddit/view/redit.page.dart';
import 'package:demo_app/features/slide/cubit/slide_cubit.dart';
import 'package:demo_app/features/slide/view/slide.page.dart';
import 'package:demo_app/features/spacex/cubit/spacex_cubit.dart';
import 'package:demo_app/features/spacex/view/spacex.page.dart';
import 'package:demo_app/navigation/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/reddit/repository/reddit.repository.dart';
import '../features/spacex/repository/spacex.repostory.dart';
import 'bottom_nav_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _sectionSpaceXNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: Screen.spacex.name);
final _sectionSlideNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: Screen.slide.name);
final _sectionRedditNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: Screen.reddit.name);

final goRouter = GoRouter(
  initialLocation: Screen.spacex.path,
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithBottomNavBar(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(navigatorKey: _sectionSpaceXNavigatorKey, routes: [
          GoRoute(
            path: Screen.spacex.path,
            name: Screen.spacex.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: BlocProvider(
                create: (context) => SpacexCubit(
                  context.read<ISpaceXRepository>(),
                )..getLatestLaunch(),
                child: const SpaceXPage(),
              ),
            ),
          ),
        ]),
        StatefulShellBranch(navigatorKey: _sectionSlideNavigatorKey, routes: [
          GoRoute(
            path: Screen.slide.path,
            name: Screen.slide.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: BlocProvider<SlideCubit>(
                create: (context) => SlideCubit(),
                child: SlidePage(),
              ),
            ),
          ),
        ]),
        StatefulShellBranch(
          navigatorKey: _sectionRedditNavigatorKey,
          routes: [
            GoRoute(
              path: Screen.reddit.path,
              name: Screen.reddit.name,
              pageBuilder: (context, state) => NoTransitionPage(
                child: BlocProvider(
                  create: (context) => RedditCubit(
                    context.read<IRedditRepository>(),
                  )..getRedditPosts(),
                  child: const RedditPage(),
                ),
              ),
            ),
          ],
        ),
      ],
    )
  ],
);
