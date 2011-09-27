# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "fs-watch"
  s.rubyforge_project = "fs-watch"
  s.version     = "0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Johannes Wagener"]
  s.email       = ["johannes@wagener.cc"]
  s.homepage    = "http://johannes.wagener.cc"
  s.summary     = "Script to watch files and directories for changes and execute a command (OSX only)"
  s.description = <<-EOF
    Script to watch files and directories for changes and execute a command. (OSX Only)
    Similar to dnotify from linux.
    Usage: 
      $ fs-watch [dirsToWatch...] "echo 'execute me when something happens'"
  EOF
  
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency 'ruby-fsevent'
  
  s.license      = "MIT"
  s.files        = %w(README.md bin/fs-watch lib/fs_watch.rb)
  #s.require_path = 'lib'
  s.executables  = ['fs-watch']
end