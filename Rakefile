require 'rubygems'
require 'rake'


require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "nsync"
  gem.summary = %Q{Keep your data processors and apps in sync}
  gem.description = %Q{Nsync is designed to allow you to have a separate data
  processing app with its own data processing optimized database and a consumer
  app with its own database, while keeping the data as in sync as you want it.}
  gem.email = "ben@pixelmachine.org"
  gem.homepage = "http://github.com/schleyfox/nsync"
  gem.authors = ["Ben Hughes"]

  gem.add_dependency "json"
  gem.add_dependency "activesupport", "~> 2.3.5"
  gem.add_dependency "schleyfox-grit", ">= 2.3.0.1"
  gem.add_dependency "schleyfox-lockfile", ">= 1.0.0"

  gem.add_development_dependency "shoulda"
  gem.add_development_dependency "mocha"
end


require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc "Generate RCov test coverage and open in your browser"
task :coverage do
  require 'rcov'
  sh "rm -fr coverage"
  sh "rcov -Itest -Ilib -x \"rubygems/*,/Library/Ruby/Site/*,gems/*,rcov*\" --html test/*_test.rb"
  sh "open coverage/index.html"
end

require 'yard'
YARD::Rake::YardocTask.new
