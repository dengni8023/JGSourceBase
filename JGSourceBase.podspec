
Pod::Spec.new do |s|
    
    s.name          = "JGSourceBase"
    s.version       = "1.0.0"
    
    s.summary       = "JGSourceCode 通用定义、功能模块。iOS项目常用功能，系统UIAlertController便捷方法封装(原项目：JGActionSheetAlert/JGAlertController)，Reachability网络状态监听(原项目：JGNetworkReachability)，Loading HUD显示，Toast显示。"
    s.description   = <<-DESC
    
    JGSourceCode 通用定义、功能模块。iOS项目常用功能，系统UIAlertController便捷方法封装(原项目：JGActionSheetAlert/JGAlertController)，Reachability网络状态监听(原项目：JGNetworkReachability)，Loading HUD显示，Toast显示。
    
    功能包括：
    
        Base
            1、常用宏定义、常用警告消除、SwizzledMethod的严谨实现
            2、通用日志控制功能
            3、字符串、URL常用方法
            4、Block循环引用常用定义weak、strong快捷处理
            5、NSDictionary便捷取指定类型值方法
            6、NSJSONSerialization便捷方法封装
            7、UIColor便捷方法封装
        
        AlertController
            原项目：JGActionSheetAlert => https://github.com/dengni8023/JGActionSheetAlert.git
            原项目：JGAlertController => https://github.com/dengni8023/JGAlertController.git
            1、UIAlertController便捷方法封装
        
        Reachability
            原项目：JGNetworkReachability => https://github.com/dengni8023/JGNetworkReachability.git
            1、网络状态获取、监听，支持多监听者
            
        LoadingHUD
            1、显示Loading HUD方法封装
            
        Toast
            1、显示Toast
            
    DESC
    
    s.homepage  = "https://github.com/dengni8023/JGSourceBase"
    s.license   = {
        :type => 'MIT',
        :file => 'LICENSE',
    }
    s.authors   = {
        "等你8023" => "945835664@qq.com",
    },
    
    s.source    = {
        :git => "https://github.com/dengni8023/JGSourceBase.git",
        :tag => "#{s.version}",
    }
    s.platforms = {
        :ios => 9.0,
    }
    
    s.source_files          = "JGSourceBase/*.{h,m}"
    s.public_header_files   = "JGSourceBase/*.h"
    # s.resource    = "JGSourceBase.bundle"
    
    # s.framework  = "Foundation"
    # s.frameworks = "SomeFramework", "AnotherFramework"
    # s.library    = "SomeLibararyy"
    # s.libraries  = "SomeLibararyy", "AnotherLibararyy"
    
    # s.dependency "Dependency", "~> 4.0"
    # s.dependency "Dependency/SUB"
    # s.dependency "Dependency", "~> 2.1"
    
    # subspec
    s.default_subspec = 'Base'
    
    # Common
    s.subspec 'Base' do |ss|
        ss.source_files         = "JGSourceBase/Base/*.{h,m}"
        ss.public_header_files  = "JGSourceBase/Base/*.h"
        
        ss.frameworks   = "Foundation", "UIKit"
        ss.xcconfig     = {
            "OTHER_LDFLAGS" => '$(inherited) -ObjC',
        }
    end
    
    # AlertController
    s.subspec 'AlertController' do |ss|
        ss.source_files         = "JGSourceBase/AlertController/*.{h,m}"
        ss.public_header_files  = "JGSourceBase/AlertController/*.h"
        
        ss.frameworks   = "Foundation", "UIKit"
        ss.dependency   "JGSourceBase/Base"
        ss.xcconfig     = {
            "OTHER_LDFLAGS" => '$(inherited) -ObjC',
            "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) JGS_AlertController'
        }
    end
    
    # Reachability
    s.subspec 'Reachability' do |ss|
        ss.source_files         = "JGSourceBase/Reachability/*.{h,m}"
        ss.public_header_files  = "JGSourceBase/Reachability/*.h"
        
        ss.framework   = "Foundation", "SystemConfiguration", "CoreTelephony"
        ss.dependency   "JGSourceBase/Base"
        ss.xcconfig     = {
            "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) JGS_Reachability'
        }
    end
    
    # Toast
    s.subspec 'Toast' do |ss|
        ss.source_files         = "JGSourceBase/Toast/*.{h,m}"
        ss.public_header_files  = "JGSourceBase/Toast/*.h"
        
        ss.framework   = "Foundation", "UIKit"
        ss.dependency   'MBProgressHUD', '~> 1.1.0'
        ss.xcconfig     = {
            "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) JGS_Toast'
        }
    end
    
    # LoadingHUD
    s.subspec 'LoadingHUD' do |ss|
        ss.source_files         = "JGSourceBase/LoadingHUD/*.{h,m}"
        ss.public_header_files  = "JGSourceBase/LoadingHUD/*.h"
        
        ss.framework   = "Foundation", "UIKit"
        ss.dependency   'MBProgressHUD', '~> 1.1.0'
        ss.dependency   "JGSourceBase/Base"
        ss.xcconfig     = {
            "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) JGS_LoadingHUD'
        }
    end
    
    s.requires_arc = true
    
end
