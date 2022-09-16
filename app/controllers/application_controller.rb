class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


   get "/movies/:imdb_id/check" do
    if(Movie.find_by(imdb_id: params[:imdb_id])==nil)
      id=99999
    else
      id=Movie.find_by(imdb_id:  params[:imdb_id]).id
    end

    id.to_json

  end

  get "/users/:email/check" do
    if(User.find_by(email: params[:email])==nil)
      id=99999
    else
      id=User.find_by(email: params[:email]).id
    end

    id.to_json

  end

  post "/movies" do
    m=Movie.create(movie_params)
    status 201
    m.id.to_json
  end

  post "/users" do
    u=User.create(user_params)
    status 201
    u.id.to_json
  end


  get "/alerts" do
    alerts=Alert.get_alerts
    alerts.to_json
  end


 
  post "/alerts" do
    a=Alert.create(alert_params)
    status 201
    a.id.to_json
  end

  delete "/alerts/:id" do
    Alert.find(params[:id]).removeAlert
    status 204
  end

  private

  def movie_params
    {title: params[:title],year:params[:year],imdb_id: params[:imdb_id]}
  end

  def user_params
    {email: params[:email]}
  end

  def alert_params
    {movie_id: params[:movie_id], user_id: params[:user_id]}
  end


end
