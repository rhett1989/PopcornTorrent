Pod::Spec.new do |s|
  s.name                      = "PopcornTorrent"
  s.version                   = "1.0.6"
  s.summary                   = "Torrent client for tvOS (Used by PopcornTime)"
  s.homepage                  = "https://github.com/PopcornTimeTV/PopcornTorrent"
  s.license                   = 'MIT'
  s.author                    = { "Popcorn" => "popcorn@time.tv" }
  s.source                    = { :git => 'https://github.com/PopcornTimeTV/PopcornTorrent.git', :tag => s.version }

  s.source_files              = "output/*.framework"
  s.requires_arc              = true

  s.platform                  = :tvos
  s.tvos.deployment_target    = '9.0'

  s.prepare_command           = 'sh build.sh -p=tvosall'
  s.preserve_paths            = %w(build.sh)

  s.vendored_frameworks       = 'output/*/PopcornTorrent.framework'
end
