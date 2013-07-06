get '/' do
  erb :index
end

get '/phone_redirect' do
	"you are being redirected"
	redirect 'https://www.google.com'
end