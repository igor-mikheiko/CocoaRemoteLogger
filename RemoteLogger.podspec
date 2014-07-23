Pod::Spec.new do |s|
  s.name = 'RemoteLogger'
  s.version = 0.1
  s.source = { :git => 'https://github.com/igor-mikheiko/CocoaRemoteLogger.git' }
  s.source_files = 'RemoteLogger.{h,m}', 'RemoteLoggerServiceProvider.{h,m}'
  s.dependency 'CocoaLumberjack'
  s.dependency 'RestKit', :podspec => 'https://raw.githubusercontent.com/igor-mikheiko/CocoaRemoteLogger/master/RestKit.podspec'
  s.dependency 'OpenUDID'
  s.requires_arc = true
  s.prefix_header_contents = '#define NSLog(format, ...) RLLog(format, ##__VA_ARGS__)'
end
