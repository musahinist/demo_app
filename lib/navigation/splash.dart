import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
