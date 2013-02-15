# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'rubygems'
require 'motion/project'
require 'bundler'
require 'motion-cocoapods'

Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'edX Videos'
  app.icons = ["Icon_Small.png", "Icon_Medium.png", "Icon_Big.png"]
  app.frameworks += %w(AudioToolbox CFNetwork SystemConfiguration MobileCoreServices Security QuartzCore StoreKit MediaPlayer)

  app.pods do
    pod "HCYoutubeParser"
  end
end
