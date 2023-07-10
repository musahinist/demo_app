import 'package:demo_app/navigation/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithBottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithBottomNavBar({super.key, required this.navigationShell});

  void _onTap(BuildContext context, int index) {
    if (index != navigationShell.currentIndex) {
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) => _onTap(context, index),
        destinations: <NavigationDestination>[
          NavigationDestination(
            selectedIcon: const Icon(Icons.rocket_launch),
            icon: const Icon(Icons.rocket_launch_outlined),
            label: Screen.spacex.name,
          ),
          NavigationDestination(
            selectedIcon: const Icon(Icons.slideshow),
            icon: const Icon(Icons.slideshow_outlined),
            label: Screen.slide.name,
          ),
          NavigationDestination(
            selectedIcon: const Icon(Icons.reddit),
            icon: const Icon(Icons.reddit_outlined),
            label: Screen.reddit.name,
          ),
        ],
      ),
    );
  }
}
