#
#  Be sure to run `pod spec lint TestDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# 设置名称
s.name         =  "TestDemo"

# 设置版本号
s.version      = "0.0.1"

# 设置摘要
s.summary      = "TestDemo.summary"

# 设置详情
s.description  = "description the layout"

# 设置仓库主页
s.homepage     = "https://github.com/diankuanghuolong/TestDemo"

# 设置许可证(此处许可和你在github或其他代码管理平台创建项目的许可一致)
s.license      =  { :type => "MIT", :file => "FILE_LICENSE" }

# 设置作者
s.author             = { "diankuanghuolong" => "3243388139@qq.com"}

# 设置仓库源,表示在哪可以找到组件工程
s.source       = { :git => "https://github.com/diankuanghuolong/TestDemo.git", :tag => "#{s.version}" }
# 设置 源文件路径 => 不是整个工程的文件，而是自己封装的代码，以后别的工程引入，就会引入这里的代码。
s.source_files  = "PanelFramework/*.{h,m}"

# s.dependency = '' 组件工程依赖哪些第三方框架
# s.frameworks = 'UIKit' 组件工程依赖哪些原生框架
# s.resource_bundles = {} 组件工程图片资源

end

