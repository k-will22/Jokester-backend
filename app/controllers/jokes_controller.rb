class JokesController < ApplicationController

    def index
      jokes = Joke.all
      render json: jokes
    end

    def create 
        joke = Joke.create({joke: params[:joke], category: params[:category]})
        render json: joke
    end

    def destroy
        joke = Joke.find(params[:id])
        joke.destroy
        render json: joke
    end

    
    private

    def joke_params
        params.require(:joke).permit(:joke, :category)
    end

end