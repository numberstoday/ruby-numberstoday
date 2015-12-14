require 'json'

class NumbersToday

  @API_TOKEN = nil

  def initialize(params)
    response = NumbersToday::Utils.fetch(
      NumbersToday::Endpoints.obtain_api_token,
      data: {
        'username' => params[:username],
        'password' => params[:password]
      }
    )
    @API_TOKEN = JSON.parse(response.body)['token']
    self
  end

  def verboses
    response = NumbersToday::Utils.fetch(
      NumbersToday::Endpoints.verboses,
      data: nil,
      api_token: @API_TOKEN,
    )
    JSON.parse(response.body.to_s)
  end

  def locations
    response = NumbersToday::Utils.fetch(
      NumbersToday::Endpoints.locations,
      data: nil,
      api_token: @API_TOKEN,
    )
    JSON.parse(response.body.to_s)
  end

  def count_buttons
    response = NumbersToday::Utils.fetch(
      NumbersToday::Endpoints.count_buttons,
      data: nil,
      api_token: @API_TOKEN,
    )
    JSON.parse(response.body.to_s)
  end

end

require 'numberstoday/endpoints'
require 'numberstoday/utils'
