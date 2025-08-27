# Provider Flutter Template

A lightweight Flutter template using Provider for state management, GoRouter for navigation, Dio for HTTP, and SharedPreferences for local storage.

## What's Inside

- Provider-based architecture with a sample Counter feature
- Centralized routing via GoRouter
- `Dio` client wrapper and `ApiService`
- `SharedPreferences` storage abstraction
- Utilities: simple logger and constants
- Strong linting via `flutter_lints`

## Structure

```
lib/
  app/
    app.dart                # MaterialApp.router
    router/
      app_router.dart       # GoRouter definitions
  core/
    client/
      dio_client.dart       # Configured Dio instance
    services/
      api_service.dart      # Example Api service
    storage/
      shared_prefs_storage.dart
    utils/
      logger.dart
      constants.dart
  features/
    home/
      home_screen.dart
    counter/
      counter_provider.dart
      counter_screen.dart
main.dart
```

## Getting Started

1. Install Flutter SDK
2. Update base URL in `lib/main.dart` inside `DioClient(baseUrl: ...)` if needed
3. Install dependencies:
```bash
flutter pub get
```
4. Run the app:
```bash
flutter run
```

## Notes

- Replace `ApiService.getExample()` with real endpoints
- Swap the logger integration with your preferred logging solution later
# flutter-_provider_templet_AI 