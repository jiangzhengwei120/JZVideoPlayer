Pod::Spec.new do |s|

  s.name         = "JZVideoPlayer"
  s.version      = "2.1.2"
  s.summary      = "A short description of JZVideoPlayer."
  s.description  = "video adapter"
  s.homepage     = "https://github.com/jiangzhengwei120/JZVideoPlayer"
  
  s.license      = "MIT" 
  s.authors  = { '非著名程序员' => 'm18363070380@163.com' }

  s.source   = { :git => 'https://github.com/jiangzhengwei120/JZVideoPlayer.git', :tag => s.version }
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.source_files = 'JZVideoPlayer/*.{h,m}'
  s.dependency 'Masonry'
  s.dependency 'SJBaseVideoPlayer'
  s.dependency 'SJUIKit'
  s.dependency 'SJPlaybackListController'
  s.dependency 'SJUIKit'

    # 通用
    s.subspec 'Common' do |ss|
        ss.source_files = 'JZVideoPlayer/Common/*.{h,m}'
    end

    # 容器
    s.subspec 'Adapters' do |ss|
        ss.source_files = 'JZVideoPlayer/Adapters/**/*.{h,m}'
        ss.dependency 'JZVideoPlayer/Common'
    end

    # 切换器
    s.subspec 'Switcher' do |ss|
        ss.source_files = 'JZVideoPlayer/Switcher/**/*.{h,m}'
    end

    # 进度条
    s.subspec 'SJProgressSlider' do |ss|
        ss.source_files = 'JZVideoPlayer/SJProgressSlider/*.{h,m}'
    end

    s.subspec 'Settings' do |ss|
        ss.source_files = 'JZVideoPlayer/Settings/*.{h,m}'
        ss.dependency 'JZVideoPlayer/SJFilmEditingControlLayer/ResourceLoader'
        ss.dependency 'JZVideoPlayer/SJEdgeControlLayer/ResourceLoader'
        ss.dependency 'JZVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader'
    end

    # 边缘控制层
    s.subspec 'SJEdgeControlLayer' do |ss|
        ss.source_files = 'JZVideoPlayer/SJEdgeControlLayer/*.{h,m}'

        ss.subspec 'ResourceLoader' do |a|
            a.source_files = 'JZVideoPlayer/SJEdgeControlLayer/ResourceLoader/*.{h,m}'
            a.resource = 'JZVideoPlayer/SJEdgeControlLayer/ResourceLoader/SJEdgeControlLayer.bundle'
        end

        ss.subspec 'View' do |v|
            v.source_files = 'JZVideoPlayer/SJEdgeControlLayer/View/*.{h,m}'
            v.dependency 'JZVideoPlayer/SJEdgeControlLayer/ResourceLoader'
            v.dependency 'JZVideoPlayer/SJEdgeControlLayer/Defines'
        end
        
        ss.subspec 'Defines' do |ss|
            ss.source_files = 'JZVideoPlayer/SJEdgeControlLayer/Defines/*.{h}'
        end

        ss.dependency 'JZVideoPlayer/Adapters'
        ss.dependency 'JZVideoPlayer/Switcher'
        ss.dependency 'JZVideoPlayer/Common'
        ss.dependency 'JZVideoPlayer/SJProgressSlider'
    end
    
    s.subspec 'SJFilmEditingControlLayer' do |f|
        f.source_files = 'JZVideoPlayer/SJFilmEditingControlLayer/*.{h,m}'
        f.dependency 'JZVideoPlayer/SJProgressSlider'
        f.dependency 'JZVideoPlayer/Switcher'
        f.dependency 'JZVideoPlayer/Adapters'
        
        f.subspec 'ResourceLoader' do |a|
            a.source_files = 'JZVideoPlayer/SJFilmEditingControlLayer/ResourceLoader/*'
            a.resource = 'JZVideoPlayer/SJFilmEditingControlLayer/ResourceLoader/SJFilmEditing.bundle'
        end

        f.subspec 'Core' do |a|
            a.source_files = 'JZVideoPlayer/SJFilmEditingControlLayer/Core/**/*.{h,m}'
            a.dependency 'JZVideoPlayer/SJFilmEditingControlLayer/ResourceLoader'
        end
    end

    s.subspec 'SJLoadFailedControlLayer' do |ss|
        ss.source_files = 'JZVideoPlayer/SJLoadFailedControlLayer/*.{h,m}'
        ss.dependency 'JZVideoPlayer/SJNotReachableControlLayer'
    end

    s.subspec 'SJNotReachableControlLayer' do |ss|
        ss.source_files = 'JZVideoPlayer/SJNotReachableControlLayer/*.{h,m}'
        ss.dependency 'JZVideoPlayer/SJEdgeControlLayer'
    end
    
    s.subspec 'SJMoreSettingControlLayer' do |ss|
        ss.source_files = 'JZVideoPlayer/SJMoreSettingControlLayer/*.{h,m}'
        ss.dependency 'JZVideoPlayer/SJEdgeControlLayer'
    end
    
    s.subspec 'SJSwitchVideoDefinitionControlLayer' do |ss|
        ss.source_files = 'JZVideoPlayer/SJSwitchVideoDefinitionControlLayer/*.{h,m}'
        ss.dependency 'JZVideoPlayer/Adapters'
        ss.dependency 'JZVideoPlayer/Common'
        ss.dependency 'JZVideoPlayer/Switcher'
    end
    
    # 浮窗小视图的控制层
    s.subspec 'SJFloatSmallViewControlLayer' do |ss|
      ss.source_files = 'JZVideoPlayer/SJFloatSmallViewControlLayer/*.{h,m}'
      ss.subspec 'ResourceLoader' do |a|
        a.source_files = 'JZVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader/*.{h,m}'
        a.resource = 'JZVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader/SJFloatSmallViewControlLayer.bundle'
      end
      ss.dependency 'JZVideoPlayer/Common'
      ss.dependency 'JZVideoPlayer/Adapters'
      ss.dependency 'JZVideoPlayer/Switcher'
    end



end