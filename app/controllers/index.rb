get '/' do
  erb :index
end

get '/phone_redirect' do
	"You are being redirected to #{params[:A1]}"
end