require "sinatra"

get '/' do
  erb :home
end

post '/user_info' do
  player_one_first_name = params[:p1_first_name]
  player_one_last_name = params[:p1_last_name]
  player_one_age= params[:p1_age]
  player_one_favorite_movie= params[:p1_favorite_movie]

  player_two_first_name = params[:p2_first_name]
  player_two_last_name = params[:p2_last_name]
  player_two_age = params[:p2_age]
  player_two_favorite_movie = params[:p2_favorite_movie]

  redirect '/results?p1_first_name=' + player_one_first_name + '&p1_last_name=' + player_one_last_name + '&p1_age=' + player_one_age + '&p1_favorite_movie=' + player_one_favorite_movie + '&p2_first_name=' + player_two_first_name + '&p2_last_name=' + player_two_last_name + '&p2_age=' + player_two_age + '&p2_favorite_movie=' + player_two_favorite_movie
 end

get '/results' do
	player_one_first_name = params[:p1_first_name]
	player_one_last_name =  params[:p1_last_name]
	player_one_age= params[:p1_age]
  	player_one_favorite_movie= params[:p1_favorite_movie]

  	player_two_first_name = params[:p2_first_name]
    player_two_last_name = params[:p2_last_name]
    player_two_age = params[:p2_age]
    player_two_favorite_movie = params[:p2_favorite_movie]
	
	erb :results, :locals => {:p1_first_name => player_one_first_name, :p1_last_name => player_one_last_name, :p1_age => player_one_age, :p1_favorite_movie => player_one_favorite_movie, :p2_first_name => player_two_first_name, :p2_last_name => player_two_last_name, :p2_age => player_two_age, :p2_favorite_movie => player_two_favorite_movie}

end

