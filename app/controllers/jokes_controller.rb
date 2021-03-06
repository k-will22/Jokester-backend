class JokesController < ApplicationController

    def index
      jokes = Joke.all
      render json: jokes
    end

    def show 
        joke = Joke.find(params[:id])
        render json: joke
    end

    def destroy
        joke = Joke.find(params[:id])
        joke.destroy
        render json: joke
    end

    def create 
        joke = Joke.create({joke: params[:joke], category: params[:category]})
        render json: joke
    end

    def edit 
        joke = Joke.find(params[:id])
        render json: joke
      end

    def update
        joke = Joke.find(params[:id])
        joke.update(joke_params)
        render json: joke
    end

    private

    def joke_params
        params.require(:joke).permit(:joke, :category)
    end

end