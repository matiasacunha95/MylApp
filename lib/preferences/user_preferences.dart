import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _preferences = UserPreferences._internal();

  factory UserPreferences() {
    return _preferences;
  }

  UserPreferences._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get jwt {
    return _prefs.getString('jwt') ?? '';
  }

  set jwt(String jwt) {
    _prefs.setString('jwt', jwt);
  }
}
