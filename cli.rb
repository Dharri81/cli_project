

class Cli

    def start
        puts "Welcome. I'm the Miss Cleo of Weather. What city would you like to see the weather for?"
        @city = gets.chomp
        @weather = Api.new(@city).create_forecast 
        get_info
    end

    def get_info
        puts "Please make a selection: temp, humidity, pressure. Please note that input is case sensitive. To exit, type quit. "
        case gets.chomp
        when 'temp' then puts "The temperature in #{@city} is #{@weather.temp}, with a min temp of #{@weather.temp_min}, and a max temp of #{@weather.temp_max}"
        when 'humidity' then puts "The humidity in #{@city} is #{@weather.humidity}"
        when 'pressure' then puts "The pressure in #{@city} is #{@weather.pressure}"
        when 'quit' then return
        else puts "Invalid selection. Try again."
        end
        get_info
    end

end

