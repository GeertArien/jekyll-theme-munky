# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-munky"
  spec.version       = "0.1.3"
  spec.authors       = ["Geert Arien"]
  spec.email         = ["geert.arien@gmail.com"]

  spec.summary       = %q{Munky is jekyll theme for portfolio websites. It features a blog, project, photography and about page.}
  spec.homepage      = "https://github.com/GeertArien/jekyll-theme-munky"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.4"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
