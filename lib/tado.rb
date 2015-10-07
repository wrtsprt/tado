require 'httparty'
require 'json'

class Tado
  include HTTParty
  base_uri 'https://my.tado.com/mobile/1.4'

  def initialize(username, password)
    @username = username
    @password = password
    @default_options = { query: { username: @username, password: @password } }
  end

  def getCurrentState
    JSON.parse self.class.get('/getCurrentState', @default_options).body
  end

  def getThermostatSettings
    JSON.parse self.class.get('/getThermostatSettings', @default_options).body
  end




end
