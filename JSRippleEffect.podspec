#
# Be sure to run `pod lib lint JSRippleEffect.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JSRippleEffect'
  s.version          = '0.1.0'
  s.summary          = 'JSRippleEffect is designed based on Doppler effect'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Formula : f_{o}=\frac{v+v_{o}}{v+v_{s}} f_{s} f_{o} = observer frequency of sound v = [speed of sound waves] v_{o} = observer velocity v_{s} = source velocity f_{s} = actual frequency of sound waves"

  s.homepage         = 'https://github.com/JastySaran/JSRippleEffect'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jasty Saran' => 'manoj.saran37@gmail.com' }
  s.source           = { :git => 'https://github.com/JastySaran/JSRippleEffect.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'JSRippleEffect/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'JSRippleEffect' => ['JSRippleEffect/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
