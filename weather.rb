class Weather
    
    def initialize(forecast)
        @temp     = forecast['main']['temp']
        @temp_min = forecast['main']['temp_min']
        @temp_max = forecast['main']['temp_max']
        @humidity = forecast['main']['humidity']
        @pressure = forecast['main']['pressure']
    end

    def temp
       "#{kelvin_to_fahrenheit(@temp).round(0)} F"
    end

    def temp_min
        "#{kelvin_to_fahrenheit(@temp_min).round(0)} F"
    end

    def temp_max
        "#{kelvin_to_fahrenheit(@temp_max).round(0)} F"
    end

    def pressure
        "#{@pressure}mb"
    end
    
    def humidity
        "#{@humidity}%"
    end
    
    private

    def kelvin_to_fahrenheit(temp)
        (temp - 273.15) * 1.8 + 32
    end
        
end