Pod::Spec.new do |s|
  s.name          = 'PopcornTorrent'
  s.version       = '1.0.6'
  s.summary       = 'The backend for the PopcornTime tvOS App'
  s.homepage      = 'https://github.com/PopcornTimeTV/PopcornTorrent'
  s.license       = 'MIT'
  s.author        = { 'Popcorn' => 'popcorn@time.tv' }
  s.source        = { :git => 'https://github.com/PopcornTimeTV/PopcornTorrent.git', :tag => s.version }

  s.platform      = :tvos, '9.0'
  s.requires_arc  = true

  s.source_files  = 'PopcornTorrent/**/*.{h}', 'PopcornTorrent/**/*.{m}'

  s.module_name   = 'PopcornTorrent'
end
