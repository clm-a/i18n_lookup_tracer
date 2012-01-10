# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "i18n_lookup_tracer/version"

Gem::Specification.new do |s|
  s.name        = "i18n_lookup_tracer"
  s.version     = I18nLookupTracer::VERSION
  s.authors     = ["Clément Alexandre"]
  s.email       = ["clmntlxndr@gmail.com"]
  s.homepage    = "https://github.com/clmntlxndr/i18n_lookup_tracer"
  s.summary     = %q{Traces the i18n translation keys lookup}
  s.description = %q{Traces the i18n translation keys lookup}

  s.rubyforge_project = "i18n_lookup_tracer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "i18n"
  s.add_runtime_dependency "rails"
end
