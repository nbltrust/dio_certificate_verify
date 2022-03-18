import 'dart:async';

import 'package:flutter/services.dart';

class CertificateVerifyBridge {
  static const MethodChannel _channel = const MethodChannel('https_certificate_verify');

  static final CertificateVerifyBridge _instance = CertificateVerifyBridge._internal();

  factory CertificateVerifyBridge() => _instance;

  CertificateVerifyBridge._internal() {
    _channel.setMethodCallHandler(_platformCallHandler);
  }

  static Future<String> check({String serverURL, int timeout}) async {
    final Map<String, dynamic> params = <String, dynamic>{"url": serverURL, "timeout": timeout};
    String resp = await _channel.invokeMethod('check', params);
    return resp;
  }

  Future _platformCallHandler(MethodCall call) async {
    print("_platformCallHandler call ${call.method} ${call.arguments}");
  }
}
