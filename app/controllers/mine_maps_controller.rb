require 'json'
require 'open-uri'
class MineMapsController < ApplicationController
  def fetch_map
    url = 'https://mine-sweeper-generator.herokuapp.com/solver'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
  end
end



