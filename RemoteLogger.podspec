Pod::Spec.new do |s|
  s.name = 'RemoteLogger'
  s.version = 0.1
  s.source = { :git => 'https://github.com/igor-mikheiko/CocoaRemoteLogger.git' }
  s.source_files = 'RemoteLogger.{h,m}', 'RemoteLoggerServiceProvider.{h,m}'
  s.dependency = 'OpenUDID'
end