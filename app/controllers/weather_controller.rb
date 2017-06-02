require 'httparty'
class WeatherController < ApplicationController

  def show
      @response = HTTParty.get('http://api.openweathermap.org/data/2.5/forecast/daily?APPID=442d640bc37e3509f97eb9305a2905f8&zip=98155&cnt=16')
      puts @response
  end
end
