Pod::Spec.new do |s|
  s.name             = 'dio_certificate_verify'
  s.version          = '0.0.1'
  s.summary          = 'Https Certificate Verification for Dio'
  s.description      = <<-DESC
Https Certificate Verification for Dio
                       DESC
  s.homepage         = 'https://github.com/nbltrust/dio_certificate_verify'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'NBLtrust' => 'developer@nbltrust.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'CryptoSwift'
  s.dependency 'Alamofire', '~> 4.7'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
