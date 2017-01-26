Pod::Spec.new do |s|
  s.name         = "CPKeezyView"
  s.version      = "0.0.1"
  s.summary      = "A short description of CPKeezyView."
  s.description  = <<-DESC
                   DESC

  s.homepage     = "http://EXAMPLE/CPKeezyView"
  s.license      = "MIT (example)"
  s.author             = { "Parsifal" => "zmw@izmw.me" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://EXAMPLE/CPKeezyView.git", :tag => "#{s.version}" }
  s.source_files  = "CPKeezyView/CPKeezyView.swift"
  s.framework  = "UIKit"
end
