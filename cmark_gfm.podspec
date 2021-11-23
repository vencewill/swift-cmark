Pod::Spec.new do |s|
    s.name = "cmark_gfm"
    s.version = "0.0.1"
    s.summary = "An extended version of the C reference implementation of [CommonMark]"
    s.homepage = "https://github.com/commonmark/cmark"
    s.license = { :type => "MIT", :file => "COPYING" }
    s.author = { "John MacFarlane" => "https://github.com/jgm" }
    s.source = { :git => "git@github.com:vencewill/swift-cmark.git", :tag => s.version.to_s }
  
    s.swift_version = '5.0'

    s.source_files = [
      "src/**/*", "extensions/**/*"
    ]
    
    s.exclude_files = [
      "src/scanners.re",
      "src/libcmark-gfm.pc.in",
      "src/config.h.in",
      "src/CMakeLists.txt",
      "src/cmark-gfm_version.h.in",
      "extensions/CMakeLists.txt",
      "extensions/ext_scanners.re",
    ]
  end
