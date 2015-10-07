require_relative 'tado'

version = '1.9'

tado = Tado.new(ENV['tado_username'], ENV['tado_password'], version)

####

puts "# Tado API spec Version #{version}"
puts "#\n\n"

puts "GET: /getCurrentState"
puts "request {"
current_state = tado.getCurrentState

current_state.keys.each do |key|
  puts "#{key}: \"\","
end

puts "}"
puts "\n\n"

########

