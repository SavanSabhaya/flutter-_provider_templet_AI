import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      errorBuilder: (context, state) {
        final l10n = AppLocalizations.of(context)!;
        return Scaffold(
          appBar: AppBar(title: Text(l10n.notFound)),
          body: Center(
            child: Text(
              state.error?.toString() ?? l10n.pageNotFound,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
