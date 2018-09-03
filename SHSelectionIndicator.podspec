Pod::Spec.new do |s|
  s.name         = "SHSelectionIndicator"
  s.version      = "1.0.0"
  s.summary      = "Selection Indicator Framework"
  s.description  = "Selection Indicator Framework"

  s.homepage     = "https://github.com/iamshezad/SHSelectionIndicator.git"

  s.license      = "MIT"

  s.author             = { "iamShezad" => "shezadahamed95@gmail.com" }

  s.source       = { :git => "https://github.com/iamshezad/SHSelectionIndicator.git", :tag => "1.0.0" }

  s.source_files  = "SHSelectionIndicator/*.{swift,h,m}"

  s.ios.deployment_target = '9.0'
 
end