#
# Be sure to run `pod lib lint CustomSlider.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CustomSlider'
  s.version          = '1.0.8'
  s.summary          = 'This Library provide you to customize the slider according to you need'

  s.description      = <<-DESC
  This Library provide you to customize the slider according to you need you can change the slider height and tint color
  @IBOutlet weak var customSlider: CustomSlider!
  
  self.customSlider.configureSlider(trackHeight: 10, thumbRadius: 30, borderWidth: 5, thumbColor: .green, thumbBorderColor: .black, trackColor: .red)
  DESC
  
  s.homepage         = 'https://github.com/ranjitrudolf1/CustomSlider'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ranjit Kumar' => 'ranjitrudolf@gmail.com' }
  s.source           = { :git => 'https://github.com/ranjitrudolf1/CustomSlider.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.platform     = :ios, '11.0'

#  s.source_files = 'CustomSlider/Classes/**/*.swift'
  s.source_files = 'Source/**/*'
  
  # s.resource_bundles = {
  #   'CustomSlider' => ['CustomSlider/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '5.0'
end
