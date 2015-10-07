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

puts "GET: /getAppUsers"
puts "request {"
app_users = tado.getAppUsers

app_users.keys.each do |key|
  if key == 'appUsers'
    app_users[key].first.keys.each do |subkey|
      puts "  #{subkey}: \"\","
    end
  else
    puts "#{key}: \"\","
  end
end

puts "}"
puts "\n\n"


