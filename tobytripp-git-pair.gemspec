# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = %q{tobytripp-git-pair}
  s.version     = "1.0.0"
  s.platform    = Gem::Platform::RUBY
  
  s.authors     = ["Chris Kampmeier", "Adam McCrea", "Jon Distad", "Toby Tripp"]
  s.email       = %q{toby.tripp+github@gmail.com}

  s.summary     = %q{Configure git to commit as more than one author}
  s.description = %q{A git porcelain for pair programming. Changes git-config's user.name and user.email settings so you can commit as more than one author.} #'
  
  s.default_executable = %q{git-pair}
  s.executables        = ["git-pair"]
  
  s.rdoc_options       = ["--charset=UTF-8"]
  s.extra_rdoc_files   = %w[LICENSE README.markdown]

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- features/*`.split("\n")
  
  s.homepage   = %q{http://github.com/tobytripp/git-pair}
  
  s.require_paths = ["lib"]
  
  s.required_rubygems_version = ">= 1.3.5"
  s.add_development_dependency "cucumber"
end
