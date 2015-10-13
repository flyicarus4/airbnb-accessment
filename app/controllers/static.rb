get '/' do
  erb :"static/index"
end

#User Page
get '/sign_up' do
	erb :"sign_up"
end

#Creates User
post '/sign_up/create' do
	@creator = User.create(params[:user])
	redirect '/'
end

#Property Page
get '/property_view' do
	erb :"property_view"
end

#New Property Page
get '/property_create' do
	erb :"property_create"
end

#Creates Property
post '/property_new/create' do
	@property = Property.create(params[:property])
	redirect '/property_view'
end