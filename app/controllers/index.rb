get '/' do
  erb :index
end

get '/phone_redirect' do
	p params
	"You are being redirected to #{params[:answer]}"
end