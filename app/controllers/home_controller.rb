class HomeController < ApplicationController
  respond_to :json

  def new
  end

  def show

    @stubhub_results = HTTParty.get('https://api.stubhubsandbox.com/search/catalog/events/v2', headers: {'Authorization' => "Bearer #{ENV['stubhub_api_key']}"})
    puts response.body

    @ticketmaster_results = HTTParty.get("https://app.ticketmaster.com/v1/events?q='kendrick+lamar'&lat=34.02&long=-118.49&radius=25&apikey=1u3s6SztBBko48JPpTCASNtS0irCgBAI")
    puts response.body
  end

end