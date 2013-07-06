get '/' do
  erb :index
end

get '/phone_redirect' do
	p params
	"You are being redirected to #{params[:A1]}"
end