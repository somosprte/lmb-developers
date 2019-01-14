Gem::Specification.new do |s|
    s.name        = 'lmb-developers'
    s.version     = '1.1.1'
    s.date        = '2019-01-07'
    s.summary     = "Consume APIs from Lery Merlin Brazil"
    s.description = "Gem to consume APIs available at developers.leroymerlin.com.br"
    s.author      = "PRTE - Tecnologia e Soluções"
    s.email       = 'contato@prte.com.br'
    s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    s.require_paths = ['lib']
    s.homepage    =
      'http://rubygems.org/gems/lmb-developers'
    s.license       = 'MIT'
  end