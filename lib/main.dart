import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'core/client/dio_client.dart';
import 'core/services/api_service.dart';
import 'core/storage/shared_prefs_storage.dart';
import 'features/counter/counter_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = SharedPrefsStorage();
  await storage.init();

  final dioClient = DioClient(baseUrl: 'https://example.com');
  final apiService = ApiService(dioClient: dioClient);

  runApp(
    MultiProvider(
      providers: [
        Provider<SharedPrefsStorage>.value(value: storage),
        Provider<ApiService>.value(value: apiService),
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
      ],
      child: const App(),
    ),
  );
}
