import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Welcome to Provider Template'),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => context.goNamed('counter'),
              child: const Text('Open Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
