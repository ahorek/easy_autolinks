if defined?(JRUBY_VERSION)
  require "easy_autolinks_java"
else
  begin
    require "#{RUBY_VERSION[/\A[0-9]+\.[0-9]+/]}/easy_autolinks.so"
  rescue LoadError
    require 'easy_autolinks.so'
  end
  require 'easy_autolinks_c'
end
