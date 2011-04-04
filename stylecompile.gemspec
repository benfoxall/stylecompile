# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stylecompile/version"

Gem::Specification.new do |s|
  s.name        = "stylecompile"
  s.version     = Stylecompile::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ben Foxall"]
  s.email       = ["benfoxall@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Use less/sass from css files}
  s.description = %q{This gem lets you include less/css files as plain old css}

  s.rubyforge_project = "stylecompile"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
