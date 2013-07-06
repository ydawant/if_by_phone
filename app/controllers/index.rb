get '/' do
  erb :index
end

get '/phone_redirect' do
	"you are being redirected"
	redirect_to 'http://www.google.com'
end