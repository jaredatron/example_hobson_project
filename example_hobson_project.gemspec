# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "example_hobson_project"

Gem::Specification.new do |s|
  s.name        = "example_hobson_project"
  s.version     = 0.1
  s.authors     = ["Jared"]
  s.email       = ["jared@deadlyicon.com"]
  s.homepage    = "http://github.com/deadlyicon/example_hobson_project"
  s.summary     = %q{example_hobson_project}
  s.description = %q{example_hobson_project}

  s.rubyforge_project = "hobson"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
