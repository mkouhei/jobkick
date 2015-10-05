require 'jobkick/version'

module JobKick
  # The CI API client
  class Client
    def initialize(url, access_token)
      @url = url
      @access_token = access_token
    end

    def dummy
      @url + @access_token
    end
  end
end
