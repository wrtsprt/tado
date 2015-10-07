require_relative 'tado'

@version = '1.9'
@tado = Tado.new(ENV['tado_username'], ENV['tado_password'], @version)


def header
  puts "# Tado API spec Version #{@version}"
  puts "#\n\n"
end

def endpoint(path, method)
  puts "#{method.upcase}: /#{path}"
  puts "request {"
  puts "  username: \"\""
  puts "  password: \"\""
  puts "}"

  response = @tado.send path
  puts "response {"

  response.keys.each do |key|
    puts "#{key}: \"\","
  end

  puts "}"
  puts "\n\n"
end

# do it

header

endpoint('getCurrentState', 'get')

########

puts "GET: /getAppUsers"
puts "request {"
app_users = @tado.getAppUsers

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


########

puts "GET: /getAppUsers"
puts "request {"
puts "something missing here .. "
puts "}"

app_user_settings = @tado.getAppUserSettings

app_user_settings.keys.each do |key|
  puts "#{key}: \"\","
end

puts "}"
puts "\n\n"

