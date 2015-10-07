require_relative 'tado_api_client'

class Tado

  def initialize(username, password)
    @api_client = TadoApiClient.new(username, password)
  end

  def current_temperature
    @api_client.getCurrentState["insideTemp"]
  end

  def status
    @api_client.getCurrentState.each do |k, v|
      puts "#{k} : #{v}"
    end
  end


end
