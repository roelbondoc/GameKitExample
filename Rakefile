# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'GameKitExample'
  app.frameworks += %w(GameKit)
  app.identifier = 'redacted'
  app.codesign_certificate = 'redacted'
  app.provisioning_profile = 'redacted'
end
