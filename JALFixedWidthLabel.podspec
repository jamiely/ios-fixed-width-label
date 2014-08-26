#
# Be sure to run `pod lib lint JALFixedWidthLabel.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JALFixedWidthLabel"
  s.version          = "0.1.0"
  s.summary          = "Provides `JALFixedWidthLabel` which shows text at a fixed width by showing only a configurable number of characters per row."
  s.description      = <<-DESC
                       Provides a `JALFixedWithLabel`, which shows text at
                       a fixed width by showing only a configurable number of
                       characters per row.
                       DESC
  s.homepage         = "https://github.com/jamiely/ios-fixed-width-label"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jamie Ly" => "jamie.ly@gmail.com" }
  s.source           = { :git => "https://github.com/jamiely/ios-fixed-width-label.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jamiely'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'JALFixedWidthLabel' => ['Pod/Assets/*.png']
  }
end
