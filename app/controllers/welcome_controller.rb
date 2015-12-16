class WelcomeController < ApplicationController
  def index
    response = HTTParty.get("https://api.do-it.org/v1/opportunities\?lat\=51.567526\&lng\=-0.182308\&miles\=2 ")
    gon.orgs = JSON.parse(response.body)["data"]["items"]
  end
end
