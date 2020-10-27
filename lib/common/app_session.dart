import 'package:shared_preferences/shared_preferences.dart';

class AppSession {
  static final AppSession _shared = new AppSession._internal();
  SharedPreferences prefs;

  factory AppSession() {
    return _shared;
  }

  AppSession._internal() {
    init();
  }

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }
}