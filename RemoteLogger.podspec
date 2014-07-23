Pod::Spec.new do |s|
  s.name = 'RemoteLogger'
  s.version = 0.1
  s.source = { :git => 'https://github.com/igor-mikheiko/CocoaRemoteLogger.git' }
  s.source_files = 'RemoteLogger.{h,m}', 'RemoteLoggerServiceProvider.{h,m}'
  s.dependency 'CocoaLumberjack'
  s.dependency 'RestKit'
  s.dependency 'OpenUDID'

  def s.post_install(target)
    prefix_header = config.project_pods_root + target.prefix_header_filename
     prefix_header.open('a') do |file|
        file.puts('Sapmple')
    end
  end
end