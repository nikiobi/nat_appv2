import 'package:shared_preferences/shared_preferences.dart';
import 'package:nat_appv2/GlobalVariables.dart';

class SharedPreferencesManager {
  SharedPreferences? _preferences;


  void loadFromPrefsUrls(String key) async {
    _preferences = await SharedPreferences.getInstance();
    newurls = _preferences!.getStringList(key)!;
  }

  void loadFromPrefsTokens(String key) async {
    _preferences = await SharedPreferences.getInstance();
    newtokens = _preferences!.getStringList(key)!;
  }

  void loadFromPrefsEventnames(String key) async {
    _preferences = await SharedPreferences.getInstance();
    neweventnames = _preferences!.getStringList(key)!;
  }

  Future<void> saveToPrefs(String key, List<String> data) async {
    _preferences = await SharedPreferences.getInstance();
    _preferences!.setStringList(key, data);
  }
}