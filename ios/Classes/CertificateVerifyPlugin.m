#import "CertificateVerifyPlugin.h"

@implementation CertificateVerifyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCertificateVerifyPlugin registerWithRegistrar:registrar];
}
@end
