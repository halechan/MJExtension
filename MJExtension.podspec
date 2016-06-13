Pod::Spec.new do |s|
  s.name         = "MJExtension"
  s.version      = "2.5.9"
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.summary      = "The fastest and most convenient conversion between JSON and model"
  s.homepage     = "https://github.com/CoderMJLee/MJExtension"
  s.license      = "MIT"
  s.author             = { "MJLee" => "199109106@qq.com" }
  s.social_media_url   = "http://weibo.com/exceptions"
  s.source       = { :git => "git@git.corp.kuaishou.com:ios/MJExtension.git", :tag => s.version }
  s.source_files  = "MJExtension"
  s.requires_arc = true
end
