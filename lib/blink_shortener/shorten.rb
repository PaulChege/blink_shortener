require_relative "access_token"
require_relative "url"
require "httparty"

module BlinkShortener
  class Shorten
    def initialize(url, email, password)
      @token = BlinkShortener::AccessToken.new(email, password).get_token
      @domain_url = URL::DOMAINS_URL
      @shorten_url = "#{URL::BASE_URL}/#{get_domain_id}/links"
      @url = url
    end

    def shorten
      response = HTTParty.post(@shorten_url, body: {url: @shorten_url}.to_json, headers: {Authorization: "Bearer #{@token}"})
      response["objects"]&.first["short_link"]
    rescue => ex
      raise ex
    end

    private
    
      def get_domain_id
        response = HTTParty.get(@domain_url, headers: {Authorization: "Bearer #{@token}"})
        response["objects"]&.first["id"]
      rescue => ex
        raise ex
      end
  end
end