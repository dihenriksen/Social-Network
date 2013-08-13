# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jnunemaker-validatable"
  s.version = "1.8.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jay Fields", "John Nunemaker"]
  s.date = "2010-04-17"
  s.description = "Validatable is a library for adding validations."
  s.email = "nunemaker@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/jnunemaker/validatable"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.2"
  s.summary = "Validatable is a library for adding validations."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_development_dependency(%q<dust>, [">= 0"])
      s.add_development_dependency(%q<expectations>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.4"])
      s.add_dependency(%q<mocha>, [">= 0.9.8"])
      s.add_dependency(%q<dust>, [">= 0"])
      s.add_dependency(%q<expectations>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.4"])
    s.add_dependency(%q<mocha>, [">= 0.9.8"])
    s.add_dependency(%q<dust>, [">= 0"])
    s.add_dependency(%q<expectations>, [">= 0"])
  end
end
