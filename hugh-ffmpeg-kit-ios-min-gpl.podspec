Pod::Spec.new do |s|
  s.name             = 'hugh-ffmpeg-kit-ios-min-gpl'
  s.version          = '6.0.2'
  s.summary          = 'FFmpeg iOS Binaries'
  s.homepage         = 'https://github.com/humanscape-hugh/ffmpeg-kit-ios'
  s.license          = { :type => "LGPL-3.0" }
  s.authors          = 'hugh'
  s.platform         = :ios, '12.1'
  s.static_framework = true
  s.requires_arc     = true

  # Link to the zip file on your GitHub release
  s.source = {
    :http => 'https://github.com/humanscape-hugh/ffmpeg-kit-ios/releases/download/6.0.2/ffmpegkit-ios-min-gpl-latest.xcframework.zip',
    :type => 'zip'
  }
  s.vendored_frameworks = [
    '6.0-80adc/ffmpegkit.xcframework',
    '6.0-80adc/libavcodec.xcframework',
    '6.0-80adc/libavdevice.xcframework',
    '6.0-80adc/libavfilter.xcframework',
    '6.0-80adc/libavformat.xcframework',
    '6.0-80adc/libavutil.xcframework',
    '6.0-80adc/libswresample.xcframework',
    '6.0-80adc/libswscale.xcframework'
  ]

  s.libraries = [ "z", "bz2", "c++", "iconv" ]
  s.frameworks = [ "AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox" ]
end
