import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/services/navigation_service.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/models/failure.dart';
import 'package:another_flushbar/flushbar.dart';

class GenericFlushBar {
  static void displayerror({
    required Failure failure,
    bool title = true,
    Color? color,
    Duration? duration,
  }) {
    Flushbar<dynamic>(
      flushbarPosition: FlushbarPosition.BOTTOM,
      duration: duration ?? const Duration(seconds: 5),
      borderRadius: BorderRadius.circular(15),
      backgroundGradient: LinearGradient(colors: [
        const Color.fromARGB(255, 128, 8, 0),
        GenericColors.gold,
      ]),
      message: failure.message,
      margin: const EdgeInsets.all(5),
      title: title ? failure.title : null,
      backgroundColor: color ?? GenericColors.gold,
    ).show(NavigationService.instance.navigatorKey.currentContext!);
  }
}
