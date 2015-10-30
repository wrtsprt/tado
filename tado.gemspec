# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tado/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'tado'
  s.summary     = "Unofficial wrapper for the Tado° Smart Thermostat API"
  s.description = "Implementing ruby classes to control a Tado° Smart Thermostat via the unofficial mobile app API"
  s.homepage    = 'https://github.com/wrtsprt'
  s.license       = 'MIT'

  s.version       = Tado::VERSION
  s.date        = '2015-10-30'

  s.authors     = ["Raphael H. Doehring"]

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'httparty'
end
