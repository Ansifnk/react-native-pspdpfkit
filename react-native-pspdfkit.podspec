# frozen_string_literal: true

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name              = "react-native-pspdfkit"
  s.version           = package["version"]
  s.summary           = "React Native PDF Library by PSPDFKit."
  s.documentation_url = "https://pspdfkit.com/guides/react-native"
  s.license           = package["license"]
  s.description       = <<-DESC
                        A high-performance viewer, extensive annotation and document editing tools, digital signatures, and more.
  DESC
  s.authors           = { "PSPDFKit GmbH" => "support@pspdfkit.com" }
  s.homepage          = "https://pspdfkit.com/guides/react-native/"
  s.platform          = :ios, "15.0"
  s.module_name       = "PSPDFKitReactNativeiOS"
  s.source            = { git: "https://github.com/Ansifnk/react-native-pspdpfkit" }
  s.source_files      = "ios/*.{xcodeproj}", "ios/RCTPSPDFKit/*.{h,m,swift}", "ios/RCTPSPDFKit/Converters/*.{h,m,swift}", "ios/RCTPSPDFKit/Helpers/*.{h,m,swift}"
  s.dependency("React")
  s.dependency("PSPDFKit", "13.9.1")
  s.dependency("Instant", "13.9.1")
  s.frameworks = "UIKit"
end
