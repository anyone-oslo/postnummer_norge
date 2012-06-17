# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "postnummer_norge/version"

Gem::Specification.new do |s|
  s.name        = "Postnummer"
  s.version     = PostnummerNorge::VERSION
  s.authors     = ["Inge Jørgensen"]
  s.email       = ["inge@manualdesign.no"]
  s.homepage    = ""
  s.summary     = %q{Ruby gem for looking up and verifying Norwegian postal codes}
  s.summary     = %q{Ruby gem for looking up and verifying Norwegian postal codes}

  #s.rubyforge_project = "postnummer_norge"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", ">= 2.10.0"
  # s.add_runtime_dependency "rest-client"
end
