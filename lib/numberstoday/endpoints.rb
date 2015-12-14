require 'numberstoday'

class NumbersToday::Endpoints
  URL = "https://numbers.today"
  API_URL = "#{URL}/api/rest"

  def self.obtain_api_token
    return {
      endpoint: URI("#{API_URL}/obtain_api_token/"),
      method: "post",
    }
  end

  def self.entries
    return {
      endpoint: URI("#{API_URL}/entries/:id"),
      method: "get",
    }
  end

  def self.verboses
    return {
      endpoint: URI("#{API_URL}/verboses/"),
      method: "get",
    }
  end

  def self.locations
    return {
      endpoint: URI("#{API_URL}/locations/"),
      method: "get",
    }
  end

  def self.count_buttons
    return {
      endpoint: URI("#{API_URL}/count_buttons/"),
      method: URI("get"),
    }
  end

end
