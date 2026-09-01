#
# Be sure to run `pod lib lint AKCustomView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AKCustomView'
  s.version          = '0.1.0'
  s.summary          = 'A customizable UIView that changes background color randomly on tap.'
  s.description      = 'AKCustomView is a lightweight Swift UIView component that changes its background color randomly when tapped or clicked.'

  s.homepage         = 'https://github.com/AurangzaibKhan1994/AKCustomView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aurangzeb Khan' => 'aurangzeb.khan@avanzasolutions.com' }
  s.source           = { :git => 'https://github.com/AurangzaibKhan1994/AKCustomView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'AKCustomView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AKCustomView' => ['AKCustomView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
