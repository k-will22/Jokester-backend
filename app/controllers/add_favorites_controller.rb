class AddFavoritesController < ApplicationController
    def index
        favorites = AddFavorite.all
        render json: favorites
    end

    def show
        favorite = AddFavorite.find(params[:id])
        render json: favorite
    end

    def create
        favorite = AddFavorite.create({user_id: params[:user_id], joke_id: params[:joke_id], joke: params[:joke]})
        render json: favorite
    end

    def destroy
        favorite = AddFavorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end
    
end