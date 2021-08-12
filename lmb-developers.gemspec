Gem::Specification.new do |s|
    s.name        = 'lmb-developers'
    s.version     = '1.2.5'
    s.date        = '2019-05-19'
    s.summary     = "Consume APIs at Leroy Merlin Brazil Developer's Portal"
    s.description = "Gem to consume APIs available at Leroy Merlin Brazil Developer's Portal https://developers.leroymerlin.com.br"
    s.author      = "PRTE - Tecnologia e Soluções"
    s.email       = 'contato@prte.com.br'
    s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    s.require_paths = ['lib']
    s.homepage    =
      'https://github.com/somosprte/lmb-developers'
    s.license       = 'MIT'
  end