require "json"
version = JSON.parse(File.read("package.json"))["version"]

Pod::Spec.new do |s|
  s.name           = "RNAppInfo"
  s.version        = version
  s.summary        = "React Native app info and version"
  s.homepage       = "https://github.com/MengWeiChen/react-native-app-info"
  s.license        = "MIT"
  s.author         = { "Meng Wei" => "yses004004@gmai.com" }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "https://github.com/MengWeiChen/react-native-app-info.git", :tag => "v#{s.version}" }
  s.source_files   = "RNAppInfo/*.{h,m}"
  s.preserve_paths = "**/*.js"
  s.requires_arc = true

  s.dependency "React"

end
