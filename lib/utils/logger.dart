import 'dart:developer';

class AppLogger {
  static void log(String message, {required String name}) {
    log(message, name: 'AppLogger');
  }
}
