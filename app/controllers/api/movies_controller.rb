class Api::MoviesController < ApplicationController
  def index
    @movies = HTTP.headers("X-Api-Key" => Rails.application.credentials.moviess_api[:api_key]).get("http://www.omdbapi.com/?t=#{params[:search]}").parse
    render json: @movies
  end
end
