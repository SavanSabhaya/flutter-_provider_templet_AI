import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/counter/counter_screen.dart';
import '../../features/home/home_screen.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter createRouter() {
    return GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: 'home',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HomeScreen(),
          ),
          routes: [
            GoRoute(
              path: 'counter',
              name: 'counter',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: CounterScreen(),
              ),
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        appBar: AppBar(title: const Text('Not found')),
        body: Center(
          child: Text(
            state.error?.toString() ?? 'Page not found',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
