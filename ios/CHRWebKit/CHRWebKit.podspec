#
# Be sure to run `pod lib lint CHRWebKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHRWebKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CHRWebKit.'
  s.description      = 'A short description of CHRWebKit.'

  s.homepage         = 'https://github.com/Charvel/CHRWebKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Charvel' => 'chengwei.rd@bytedance.com' }
  s.source           = { :git => 'https://github.com/Charvel/CHRWebKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.frameworks = 'UIKit', 'Foundation'
  
  s.subspec 'Core' do |core|
      core.subspec 'Utils' do |ut|
          ut.source_files = 'CHRWebKit/Classes/Utils/**/*'
      end
  end
  
  s.subspec 'CHRJSBridge' do |jsb|
      jsb.dependency 'CHRWebKit/Core'
      jsb.source_files = 'CHRWebKit/Classes/CHRJSBridge/**/*.{h,m,mm}'
  end
  
  s.subspec 'CHRWebView' do |web|
      web.dependency 'CHRWebKit/Core'
      web.source_files = 'CHRWebKit/Classes/CHRWebView/**/*.{h,m,mm}'
  end

  
  # s.resource_bundles = {
  #   'CHRWebKit' => ['CHRWebKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
