# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'md2html/version'

Gem::Specification.new do |s|
  s.name        = 'md2html'
  s.version     = Md2html::VERSION
  s.authors     = ['Yann Lugrin']
  s.email       = ['yann.lugrin@sans-savoir.ch']
  s.homepage    = ""
  s.summary     = %q{Convert Markdown file to HTML}
  s.description = %q{Convert Markdown file to HTML}

  s.rubyforge_project = "md2html"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'redcarpet'
end
