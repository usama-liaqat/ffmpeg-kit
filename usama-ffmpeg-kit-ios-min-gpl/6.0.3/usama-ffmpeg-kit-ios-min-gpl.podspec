require "json"

Pod::Spec.new do |s|
  s.name         = "usama-ffmpeg-kit-ios-min-gpl" # Match your file name
  s.version      = "6.0.3"
  s.summary      = "FFmpeg Kit iOS Min GPL Shared Framework"
  s.description  = "Includes FFmpeg with gmp and gnutls libraries enabled."
  s.homepage     = "https://github.com/usama-liaqat/ffmpeg-kit"
  s.license      = { :type => "LGPL-3.0", :text => "Licensed under the LGPL-3.0" }
  s.authors      = "<author_name>"


  s.source = {
    :http => "https://github.com/usama-liaqat/ffmpeg-kit/releases/download/v1.0/ffmpeg-kit-ios-min-gpl.zip"
  }

  s.platform          = :ios
  s.ios.deployment_target = "12.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]

  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }

s.vendored_frameworks = [
  "ffmpeg-kit-ios-min-gpl/ffmpegkit.xcframework",
  "ffmpeg-kit-ios-min-gpl/libavcodec.xcframework",
  "ffmpeg-kit-ios-min-gpl/libavdevice.xcframework",
  "ffmpeg-kit-ios-min-gpl/libavfilter.xcframework",
  "ffmpeg-kit-ios-min-gpl/libavformat.xcframework",
  "ffmpeg-kit-ios-min-gpl/libavutil.xcframework",
  "ffmpeg-kit-ios-min-gpl/libswresample.xcframework",
  "ffmpeg-kit-ios-min-gpl/libswscale.xcframework",
]

end