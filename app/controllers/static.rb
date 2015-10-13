get '/' do
  erb :"static/index"
end

#User Page
get '/sign_up' do
	erb :"sign_up"
end

#Property Page
get '/property_view' do
	erb :"property_view"
end

#New Property Page
get '/property_create' do
	erb :"property_create"
end

#User Profile Page
get '/user_profile' do
	erb :"user_profile"
end

#Show all Users
post '/show_user' do
	@view = users.all
end

#Creates User
post '/sign_up/create' do
	@creator = User.create(params[:user])
	redirect '/'
end

#Creates Property
post '/property_new/create' do
	@finder = User.find_by(username: params[:username])
	@finder

	@property = Property.create(params[:property])
	@property.user = @finder

	redirect '/property_view'
end