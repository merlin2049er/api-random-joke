class JokesController < ApplicationController

  def index
    response = HTTParty.get('https://api.chucknorris.io/jokes/random')

    json = JSON.parse(response.body)

    @joke = json.fetch("value")


  end

end
