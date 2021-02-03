Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "MainSDK"
s.summary = "MainSDK is only for testing"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT"}

# 4 - Replace with your name and e-mail address
s.author = { "Peter Lizak" => "itispeterlizak@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/pikxel/mainSDK.git"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/pikxel/mainSDK.git",
             :tag => "#{s.version}",
             :commit => "3b236e5dfad01bfe1e3d12eb96d6bda7e580739c"
}

# 7
s.framework = "UIKit"

s.default_subspecs = 'MainSDK'

s.subspec 'MainSDK' do |sp|
  sp.source_files = 'MainSDK/*.{h,m,swift}'
end

s.subspec 'Twilio' do |tw|
  tw.xcconfig    =
        { 'OTHER_CFLAGS' => '$(inherited) -DKITE_OFFER_PAYPAL' }
#  tw.dependency 'MainSDK/MainSDK'
  tw.source_files = 'TwilioSDK/*.{h,m,swift}'
end


# 8
s.source_files = "MainSDK/**/*.{swift}"

# 10
s.swift_version = "5.0"

end
