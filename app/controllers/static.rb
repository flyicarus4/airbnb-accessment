get '/' do
  erb :"static/index"
end

#User Page
get '/sign_up' do
	erb :"sign_up"
end

#Property Page
get '/property_view' do
	@available = Property.available?
	@show = Property.print
	erb :"property_view"
end

#New Property Page
get '/property_create' do
	erb :"property_create"
end

#User Profile Page
get '/user_profile' do
	@render = User.print
	erb :"user_profile"
end

#Login authentication
post '/authenticate' do
	a = params[:username]
	b = params[:password]

	if User.authenticate(a, b) == true
		redirect '/property_view'
	else
		redirect '/'
	end
end

#Creates User
post '/sign_up/create' do
	@creator = User.create(params[:user])
	redirect '/'
end

#Creates Property
post '/property_new/create' do
	@property = Property.create(params[:property])
	@all_properties = Property.all

	redirect '/property_view'
end