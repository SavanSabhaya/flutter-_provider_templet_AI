// Minimal logger that can be swapped for a more advanced one later
// Avoids print in production builds
import 'package:flutter/foundation.dart';

void logInfo(String message) {
  if (kDebugMode) {
    // ignore: avoid_print
    print('[INFO] $message');
  }
}

void logError(String message, [Object? error, StackTrace? stackTrace]) {
  if (kDebugMode) {
    // ignore: avoid_print
    print('[ERROR] $message');
    if (error != null) {
      // ignore: avoid_print
      print('  error: $error');
    }
    if (stackTrace != null) {
      // ignore: avoid_print
      print(stackTrace);
    }
  }
}
