# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "magicbroker"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roberto Calderon"]
  s.date = "2012-08-11"
  s.description = "The MAGIC-Broker-2 gem"
  s.email = "roberto@robertocalderon.ca"
  s.extra_rdoc_files = ["README.rdoc", "lib/broker.rb", "lib/client/client.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/broker.rb", "lib/client/client.rb", "Manifest", "magicbroker.gemspec"]
  s.homepage = "https://github.com/magic-liam/broker-gem-0.2.0.git"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Magicbroker", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "magicbroker"
  s.rubygems_version = "1.8.24"
  s.summary = "The MAGIC-Broker-2 gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
