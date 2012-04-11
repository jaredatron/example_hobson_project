unless defined? Bundler
  begin
    require 'bundler/setup'
  rescue
    require 'rubygems'
    require 'bundler/setup'
  end
end

task :default do
  exec 'bundle exec rspec -db; bundle exec cucumber'
end
