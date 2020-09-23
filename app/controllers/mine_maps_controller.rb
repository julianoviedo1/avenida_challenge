require 'json'
require 'open-uri'
class MineMapsController < ApplicationController

  def index
    @map = fetch_map
  end

  private

  def fetch_map
    url = 'https://mine-sweeper-generator.herokuapp.com/solver'
    user_serialized = open(url).read
    JSON.parse(user_serialized)
  end

  def map_decompose(mapa)
    # cada array representa una row, cada element lo reemplazo por 1 si es bomba
    mapa.each { |row| row.replace(row.map { |element| element == '*' ? true : 0 }) }
    mapa.last
  end
end
