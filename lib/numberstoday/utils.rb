require 'http'
require 'numberstoday'

class NumbersToday::Utils

  def self.fetch(obj, data: {}, api_token: nil)
    if obj[:method] == "get"
      HTTP.headers(:authorization => "Token #{api_token}").get(obj[:endpoint])
    else
      HTTP.post(obj[:endpoint], :form => data)
    end
  end

end

