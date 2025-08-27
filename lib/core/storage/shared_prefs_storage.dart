import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsStorage {
  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    final prefs = _ensurePrefs();
    return prefs.setString(key, value);
  }

  String? getString(String key) {
    final prefs = _ensurePrefs();
    return prefs.getString(key);
  }

  Future<bool> setBool(String key, bool value) async {
    final prefs = _ensurePrefs();
    return prefs.setBool(key, value);
  }

  bool? getBool(String key) {
    final prefs = _ensurePrefs();
    return prefs.getBool(key);
  }

  SharedPreferences _ensurePrefs() {
    final prefs = _prefs;
    if (prefs == null) {
      throw StateError('SharedPrefsStorage not initialized. Call init() first.');
    }
    return prefs;
  }
}
