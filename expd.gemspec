require "./lib/expd"

Gem::Specification.new do |s|
    s.name          = "expd"
    s.version       = Expd.version
    s.date          = Time.now

    s.summary       = "Text snippets command-line tool"
    s.description   = "Expand text snippet from simple shortcuts on the command-line"
    s.license       = "MIT"

    s.author        = "Baptiste Fontaine"
    s.email         = "batifon@yahoo.fr"
    s.homepage      = "https://github.com/bfontaine/expd"

    s.files         = Dir["lib/**/*.rb"]
    s.test_files    = Dir["tests/**/*.rb"]
    s.require_path  = "lib"
    s.executables  << "expd"

    s.add_runtime_dependency "trollop",  "~> 2.1"

    s.add_development_dependency "simplecov", "~> 0.11"
    s.add_development_dependency "rake",      "~> 10.5"
    s.add_development_dependency "coveralls", "~> 0.8"
end
