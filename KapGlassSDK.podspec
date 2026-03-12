Pod::Spec.new do |spec|
  spec.name         = "KapGlassSDK"
  spec.version      = "1.0.2"
  spec.summary      = "KapGlassSDK 是一款提供 XXX 功能的二进制集成库"

  # 这里的 description 必须比 summary 长，否则验证会报错
  spec.description  = <<-DESC
                       KapGlassSDK 提供了完整的 XXX 功能支持，采用二进制 .xcframework 形式分发，
                       不暴露源代码，支持 iOS 15.6 及以上系统，兼容 M1 模拟器。
                   DESC

  spec.homepage     = "https://github.com/sunshy1988/kap_glass_sdk"
  spec.license      = { :type => "MIT", :file => "LICENSE.txt" }
  spec.author       = { "hangman" => "447037924@qq.com" }

  # 设置支持的最低系统版本
  spec.ios.deployment_target = "15.6"

  # --- 核心配置：指向你的 GitHub Release Zip 包 ---
  # 请将下面的 URL 替换为你上传到 GitHub Release 后得到的真实下载链接
  spec.source       = { 
    :http => "https://github.com/sunshy1988/kap_glass_sdk/archive/refs/tags/1.0.2.zip" 
  }

  # 指明二进制文件的相对路径（相对于 Zip 解压后的根目录）
  spec.vendored_frameworks = "KapGlassSDK.xcframework"

  # 其他必要设置
  spec.requires_arc = true
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' } # 可选，如果模拟器运行有问题时开启
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' } # 可选

  # 如果你的 SDK 内部依赖了系统库或第三方库，请取消下面的注释并修改
  spec.frameworks = "AVFAudio", "Network", "CoreBluetooth", "Foundation", "Network", "UIKit", "NetworkExtension"
  # spec.dependency "SomeOtherPod"

end