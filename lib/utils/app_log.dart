import 'dart:developer';
import 'package:flutter/foundation.dart';

import 'error_log.dart';

import 'dart:developer';
import 'package:flutter/foundation.dart';

import 'error_log.dart';





//Better alternative
Future<void> appLogger({
  required String title,
  required dynamic message,

}) async {

  if (kDebugMode) {
    log(
      "🪘🪘========================================= $title ======================================🪘🪘",
    );
    log(message.toString());
    log(
      "🪘🪘====================================End============================================🪘🪘",
    );
  }
}


void errorLogger(String message, dynamic e, {String title = "Error form"}) {
  try {
    if (kDebugMode) {
      log("🎌🎌🪖🎴🎴🎴🎴🎴🎴🪖🎌🎌 $title > $message >>> 🧐🧐 ${e.toString()} 👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏👏");
    }
  } catch (e) {
    ///////
  }
}

//Simple approach
void appLog(dynamic message) {
  try {
    if (kDebugMode) {
      log("""
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

$message

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

""");
    }
  } catch (e) {
    errorLog("app log", e);
  }
}



class AppLogColor {
  static const _reset = '\x1B[0m';
  static const _red = '\x1B[31m';
  static const _green = '\x1B[32m';
  static const _yellow = '\x1B[33m';
  static const _blue = '\x1B[34m';
  static const _cyan = '\x1B[36m';

  static void info(String message) {
    if (kDebugMode) {
      debugPrint('$_blue[INFO] $message$_reset');

    }
  }

  static void success(String message) {
    if (kDebugMode) {
      debugPrint('$_green[SUCCESS] $message$_reset');

    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      debugPrint('$_yellow[WARNING] $message$_reset');
    }
  }

  static void error(String message, dynamic e, {String title = "Error form"}) {
    if (kDebugMode) {
      debugPrint('$_red[ERROR] $title  $message → ${e.toString()}$_reset');

    }
  }

  static void debug(String message) {
    if (kDebugMode) {
      debugPrint('$_cyan[DEBUG] $message$_reset');
    }
  }
}



