#!/usr/bin/env rake

require 'bundler/gem_tasks'
gemspec = Bundler::GemHelper.gemspec
if defined?(JRUBY_VERSION)
  require 'rake/javaextensiontask'
  Rake::JavaExtensionTask.new('easy_autolinks', gemspec)
else
  require 'rake/extensiontask'
  Rake::ExtensionTask.new('easy_autolinks', gemspec) do |ext|
    ext.cross_compile = true
    ext.cross_platform = %w[x86-mingw32 x64-mingw32]
    ext.cross_config_options << '--with-ldflags="-static-libgcc"' << '--with-static-libstdc++'
  end
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.test_files = gemspec.test_files
  test.verbose = true
end

task :default => :test