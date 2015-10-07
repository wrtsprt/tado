require 'httparty'
require 'json'

class Tado
  include HTTParty

  def initialize(username, password, api_version)
    @username = username
    @password = password
    @default_options = { query: { username: @username, password: @password } }

    self.class.base_uri "https://my.tado.com/mobile/#{api_version}"
  end

  def getCurrentState
    JSON.parse self.class.get('/getCurrentState', @default_options).body
  end

  def getThermostatSettings
    JSON.parse self.class.get('/getThermostatSettings', @default_options).body
  end




end
