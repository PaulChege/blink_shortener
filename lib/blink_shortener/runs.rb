require_relative "access_token"
require_relative "shorten"

puts BlinkShortener::Shorten.new("https://google.com", "myemail@example.com", "mypassword").shorten
