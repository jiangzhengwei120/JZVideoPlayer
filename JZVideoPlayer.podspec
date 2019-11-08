Pod::Spec.new do |spec|

  spec.name         = "JZVideoPlayer"
  spec.version      = "1.1.0"
  spec.summary      = "A short description of JZVideoPlayer."
  spec.description  = "video adapter"
  spec.homepage     = "https://github.com/jiangzhengwei120/JZVideoPlayer"
  
  spec.license      = "MIT" 
  spec.authors  = { '非著名程序员' => 'm18363070380@163.com' }

  spec.source   = { :git => 'https://github.com/jiangzhengwei120/JZVideoPlayer.git', :tag => spec.version }
  spec.requires_arc = true
  spec.ios.deployment_target = '8.0'
  spec.source_files = 'JZVideoPlayer/*.{h,m}'
  spec.dependency 'SJBaseVideoPlayer'
  spec.dependency 'SJUIKit'
  spec.dependency 'SJRouter'
  spec.dependency 'SJPlaybackListController'



end