#
# Be sure to run `pod lib lint ZSDropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZSDropDownMenu'
  s.version          = '0.1.2'
  s.summary          = 'ZSDropDownMenu 是swift版本的，下拉选择菜单'
  s.swift_version    =  '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  ZSDropDownMenu 是swift版本的下拉选择菜单，后期会不断更新，二级菜单，三级菜单，敬请期待
                       DESC

  s.homepage         = 'https://github.com/zhengdashuai/ZSDropDownMenu'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '郑大帅' => '1020351736@qq.com' }
  s.source           = { :git => 'https://github.com/zhengdashuai/ZSDropDownMenu.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZSDropDownMenu/Classes/ZSDropDownMenu.swift'
  
  # s.resource_bundles = {
  #   'ZSDropDownMenu' => ['ZSDropDownMenu/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
