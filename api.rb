require_relative '../environment.rb'
require_relative 'weather.rb'


class Api
    attr_accessor :city
    
    def initialize(city)
        @city = city
    end

    def fetch_weather
        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@city}&appid=b57809621f13826e8bf44a3eff4fd8b3"

        uri = URI(url)
        response = Net::HTTP.get(uri)
        forecast = JSON.parse(response)
    end
    

    def create_forecast
        Weather.new(self.fetch_weather)
    end

end

 api = Api.new("Denver")



