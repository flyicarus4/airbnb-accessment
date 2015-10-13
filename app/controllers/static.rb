get '/' do
  erb :"static/index"
end

#Create User
get '/sign_up' do
	erb :"sign_up"
end

#Show Property
get '/property_view' do
	erb :"property_view"
end