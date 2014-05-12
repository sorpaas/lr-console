Gem::Specification.new do |s|
  s.name        = 'lr-console'
  s.version     = '0.0.1'
  s.date        = '2014-05-12'
  s.summary     = "Yet another all-is-list scheme interpreter."
  s.description = "A scheme interpreter that treat all things as lists."
  s.authors     = ["sorpa'as plat"]
  s.email       = 'sorpaas@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.executables << "lr-console"
  s.homepage    =
    'http://github.com/sorpaas/lr-console'
  s.license       = 'MIT'
end