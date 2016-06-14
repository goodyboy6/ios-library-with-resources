inhibit_all_warnings!

# 使用现有的 workspace(MyLibraryTest.xcworkspace), 不要生成新的!
workspace 'MyLibraryTest.xcworkspace'
# 配置默认 xcodeproj, 路径是相对于 Podfile 的路径. 这是必须的, 否则会报Syntax错误.
xcodeproj 'MyLibraryTest/MyLibraryTest.xcodeproj'

## 下面就是配置各个Target了! 也就是说, CocoaPods 面向的主配置对象是Target而不
## 是Project. 当然你得指定该Target属于那个Project, 否则会使用前面配置默认的.

# 配置MyLibraryTest(Target)
target :MyLibraryTest do
    # 该Target属于的工程
    xcodeproj 'MyLibraryTest/MyLibraryTest.xcodeproj'
    # 平台和系统版本
    platform :ios, "7.0"
    # Masonry pod
    pod 'Masonry', '~> 1.0.1'
end

#配置MyLibrary(Target)
target :MyLibrary do
    xcodeproj 'MyLibrary/MyLibrary.xcodeproj'
    platform :ios, "7.0"
    pod 'KVOController', '~> 1.1.0'
    pod 'Masonry', '~> 1.0.1'
end