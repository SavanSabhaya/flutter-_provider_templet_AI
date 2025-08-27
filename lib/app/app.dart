import 'package:flutter/material.dart';

import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.createRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Provider Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
