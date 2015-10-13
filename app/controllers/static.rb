get '/' do
  erb :"static/index"
end

#Create User
get '/sign_up' do
	erb :"sign_up"
end
