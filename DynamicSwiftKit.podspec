//
//  DynamicSwiftKit.podspec
//  DynamicSwiftKit
//
//  Created by Khayala Hasanli on 31.01.24.
//

Pod::Spec.new do |s|
    s.name         = "DynamicSwiftKit"
    s.version      = "1.0.0"
    s.summary      = "DynamicSwiftKit: DynamicSwiftKit"
    s.description  = "Dynamic Swift Kit is a versatile and user-friendly framework developed using Swift and UIKit, designed to enhance and streamline the development of iOS applications."
    s.homepage     = "https://github.com/Khasanli/DynamicSwiftKit.git"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "Khayala Hasanli" => "khasanli2021@gmail.com" }
    s.source       = { :git => "https://github.com/Khasanli/DynamicSwiftKit.git", :branch => "main", :tag => "#{s.version}" }
    s.vendored_frameworks = "Sources/DynamicSwiftKit.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '13.0'
    s.requires_arc = true
end
