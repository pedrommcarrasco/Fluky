Pod::Spec.new do |s|
  s.swift_version = "4.2"
  s.name         = "Fluky"
  s.version      = "1.0.0"
  s.summary      = "🎲 Icon based randomized loading"

  s.description  = "TODO"

  s.homepage     = "https://github.com/pedrommcarrasco/Fluky"
  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.author    = "Pedro Carrasco"
  s.social_media_url   = "http://twitter.com/pedrommcarrasco"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/pedrommcarrasco/Fluky.git", :tag => s.version.to_s }

  s.source_files  = "Fluky/Fluky/**/*"
  s.exclude_files = "Fluky/Fluky/*.plist"
end
