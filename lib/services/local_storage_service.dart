import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<String?> getString(
    String key,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<bool> setString(
    String key,
    String value,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  Future<bool> setInt(
    String key,
    int value,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  Future<List<String>?> getStringList(
    String key,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  Future<int?> getInt(
    String key,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  Future<bool> setBool({
    required String key,
    required bool value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
