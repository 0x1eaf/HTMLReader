Pod::Spec.new do |s|
  s.name         = 'HTMLReader'
  s.version      = `/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" Framework/Info.plist`.strip
  s.summary      = "A WHATWG-compliant HTML parser in Objective-C."
  s.homepage     = 'https://github.com/0x1eaf/HTMLReader'
  s.license      = "Public domain"
  s.author       = { "Nolan Waite" => 'nolan@nolanw.ca' }
  s.source       = { :git => 'https://github.com/0x1eaf/HTMLReader.git', :tag => "v#{s.version}" }
  s.source_files = "Sources/**/*.[hm]"
  s.requires_arc = true

  no_arc_files = "Sources/HTMLNode.m"
  s.exclude_files = no_arc_files
  s.subspec 'no-arc' do |sna|
    sna.source_files = no_arc_files, "Sources/**/*.h"
    sna.requires_arc = false
    sna.pod_target_xcconfig = {
      'OTHER_LDFLAGS' => '$(inherited) -undefined dynamic_lookup',
      'CLANG_ENABLE_OBJC_WEAK' => 'YES',
    }
  end

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
end
