import 'package:dio/dio.dart';
import 'package:dio_certificate_verify/certificate_verify_bridge.dart';

class CertificateVerifyInterceptor extends Interceptor {
  final List<String> _allowedSHAFingerprints;

  CertificateVerifyInterceptor(this._allowedSHAFingerprints);

  @override
  Future onRequest(RequestOptions options) async {
    final secure = await CertificateVerifyBridge.check(serverURL: options.baseUrl, timeout: 50);

    if (secure.contains("CONNECTION_SECURE")) {
      return super.onRequest(options);
    } else {
      throw Exception("CONNECTION_NOT_SECURE");
    }
  }
}
