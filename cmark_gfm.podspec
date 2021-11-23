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
      'src/include/module.modulemap',
      "extensions/CMakeLists.txt",
      "extensions/ext_scanners.re",
    ]
    s.public_header_files = [
      "src/include/cmark-gfm.h",
      "src/include/cmark-gfm_config.h",
      "src/include/cmark-gfm-extension_api.h",
      "src/include/buffer.h",
      "src/include/chunk.h",
      "src/include/cmark_ctype.h",
      "src/include/footnotes.h",
      "src/include/houdini.h",
      "src/include/html.h",
      "src/include/inlines.h",
      "src/include/iterator.h",
      "src/include/map.h",
      "src/include/mutex.h",
      "src/include/node.h",
      "src/include/parser.h",
      "src/include/plugin.h",
      "src/include/references.h",
      "src/include/registry.h",
      "src/include/render.h",
      "src/include/scanners.h",
      "src/include/syntax_extension.h",
      "src/include/utf8.h",
      "extensions/include/*.h",
    ]
  end
