require_relative "version"
require_relative "url"
require "httparty"

module BlinkShortener  
  class AccessToken
    def initialize(email, password)
      @email = email
      @password = password
      @url = URL::ACCESS_TOKEN_URL
    end

    def get_token
      response = HTTParty.post(@url, body: {email: @email, password: @password}.to_json)
      case response["success"]
      when 0
        raise "Invalid Authentication"
      when 1
        response["access_token"]
      end
    end
  end
end

