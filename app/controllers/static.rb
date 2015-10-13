get '/' do
  erb :"static/index"
end

#User Page
get '/sign_up' do
	erb :"sign_up"
end

post '/sign_up/create' do
	@creator = User.create(params[:user])
	redirect '/'
end

#Show Property
get '/property_view' do
	erb :"property_view"
end