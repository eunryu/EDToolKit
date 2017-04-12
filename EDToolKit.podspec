#
# Be sure to run `pod lib lint EDToolKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EDToolKit'
  s.version          = '2.1.2'
  s.summary          = 'EDToolKit is My Tool, And AutoLayoutKit is In.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
오토레이아웃을 더 편하게 쓰기 위해 만들기 시작한 pod. 현재 오토 레이아웃 정도만 있고,
추후UI관련 추가예정.
                       DESC

  s.homepage         = 'https://github.com/Eunryu/EDToolKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '은아월' => 'instru93@naver.com' }
  s.source           = { :git => 'https://github.com/Eunryu/EDToolKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target  = '9.0'

  s.source_files = 'EDToolKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EDToolKit' => ['EDToolKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
