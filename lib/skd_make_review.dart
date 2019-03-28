import 'dart:async';

import 'package:flutter/services.dart';

class SkdMakeReview {
  static const MethodChannel _channel =
      const MethodChannel('skd_make_review');

  static Future<bool> openStorePage(String androidAppId, String iosAppId) async {

    final bool result = await _channel.invokeMethod('makeReview' ,<String, dynamic>{
      'ios_app_id' : iosAppId,
      'android_app_id' : androidAppId
    } );
    return result;
  }
}
