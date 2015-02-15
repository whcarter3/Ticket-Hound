class HomeController < ApplicationController
  respond_to :json

  def new
  end

  def show

    @stubhub_results = HTTParty.get('https://api.stubhubsandbox.com/search/catalog/events/v2', headers: {'Authorization' => "Bearer #{ENV['stubhub_api_key']}"})
    puts response.body
    
  end

end