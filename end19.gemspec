# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "end19"
  spec.version       = "1.0.0"
  spec.authors       = ["Ina Chen","Cassidy","Thyo"]
  spec.email         = ["chenina@sas.upenn.edu", ""]

  spec.summary       =  "Mapping the locations in 18th century novels' title pages"
  spec.description   = %q{Project website (a free and open-source Jekyll website).}
  spec.homepage      = "https://cholahan.github.io/end19/"
  spec.license       = "MIT"

  spec.files         = Dir.glob("**/{*,.*}").select do |f|
    f.match(%r{^(assets/(js|css|fonts|data)|_(includes|layouts|sass)/|(LICENSE|README.md))}i)
  end

  spec.required_ruby_version = '~> 2.3'

  spec.add_runtime_dependency "jekyll", "~> 3.8", ">= 3.8.5"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~>2.6"

  spec.add_development_dependency "bundler", "~> 2.0", ">= 2.0.1"
  spec.add_development_dependency "rake", "~> 10.0"

end
