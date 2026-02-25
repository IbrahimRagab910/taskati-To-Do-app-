import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String nameKey = 'neme';
  static const String pathKey = 'path';
  static const String isUploadedKey = 'isUplouded';
  static late final SharedPreferences prefs;
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) async {
    await prefs.setString(key, value);
  }

  static String getString(String key) {
    return prefs.getString(key) ?? '';
  }

  static Future<void> setUserInfo(String name, String path) async {
    await prefs.setString(nameKey, name);
    await prefs.setString(pathKey, path);
  }

  static Future<void> setBool(String key, bool isUploaded) async {
    await prefs.setBool(key, isUploaded);
  }
  static bool getBool(String key) {
     return prefs.getBool(key)?? false;
  }
}
