# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "postnummer_norge/version"

Gem::Specification.new do |s|
  s.name        = "postnummer_norge"
  s.version     = PostnummerNorge::VERSION
  s.authors     = ["Inge Jørgensen"]
  s.email       = ["inge@anyone.no"]
  s.homepage    = ""
  s.summary     = "Norwegian postal codes"

  # s.rubyforge_project = "postnummer_norge"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov", "0.17.1"
  # s.add_runtime_dependency "rest-client"
end
