import 'package:shared_preferences/shared_preferences.dart';

enum LocalStorage {
  meta,
}

extension LocalStorageExtension on LocalStorage {
  String get keyString {
    switch (this) {
      case LocalStorage.meta:
        return "meta";
    }
  }

  Future<bool> setString(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(keyString, value);
  }

  Future<String> getString({String? defaultValue}) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if (defaultValue == null) {
      return pref.getString(keyString) ?? "";
    }
    return pref.getString(keyString) ?? defaultValue;
  }

  Future<bool> remove() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove(keyString);
  }
}
