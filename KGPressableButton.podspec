Pod::Spec.new do |s|
  s.name         = "KGPressableButton"
  s.version      = "1.0.0"
  s.summary      = "Loading animation"
  s.homepage     = "https://github.com/Gypsyan/KGPressableButton"
  s.license      = 'Apache License, Version 2.0'
  s.author             = { "Ananth" => "ananthanmymail@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/Gypsyan/KGPressableButton.git", :tag => s.version }
  s.source_files  = "KGPressableButton/*.swift"
end
