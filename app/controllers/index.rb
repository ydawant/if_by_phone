get '/' do
  erb :index
end

get '/phone_redirect' do
	s = Geocoder.search(params[:answer])
	@forecast = ForecastIO.forecast(s[0].latitude, s[0].longitude)
	current_temp = @forecast.currently.temperature
	summary = @forecast.currently.summary
	chance_of_rain = @forecast.currently.precipProbability
	max_temp = @forecast.daily.data[0].temperatureMax
	min_temp = @forecast.daily.data[0].temperatureMin
	"It is currently #{current_temp} and #{summary} in #{params[:answer]} with a #{chance_of_rain} percent chance of rain. The max temperature for the day is #{max_temp}"
end

