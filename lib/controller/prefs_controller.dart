import 'package:shared_preferences/shared_preferences.dart';

class PrefsController {
  static adicionarLog() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int logs;
    if (prefs.getInt('logs') == null) {
      logs = 0;
    } else {
      logs = prefs.getInt('logs')!;
    }
    await prefs.setInt('logs', logs + 1);
  }

  static Future<bool> consultarLogs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool jaLogou;
    if (prefs.getInt('logs') == null) {
      jaLogou = false;
    } else {
      jaLogou = true;
    }
    return jaLogou;
  }

  static teste() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
