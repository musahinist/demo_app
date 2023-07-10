import 'package:demo_app/features/reddit/data/api/reddit.service.dart';
import 'package:demo_app/features/spacex/data/api/spacex.service.dart';
import 'package:demo_app/features/spacex/repository/spacex.repostory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/reddit/repository/reddit.repository.dart';
import 'navigation/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ISpaceXService>(
          create: (context) => SpaceXService(),
        ),
        RepositoryProvider<ISpaceXRepository>(
          create: (context) => SpaceXRepository(
            context.read<ISpaceXService>(),
          ),
        ),
        RepositoryProvider<IRedditService>(create: (contex) => RedditService()),
        RepositoryProvider<IRedditRepository>(
          create: (context) => RedditRepository(
            context.read<IRedditService>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headlineLarge: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: TextStyle(
              color: Colors.white,
            ),
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
