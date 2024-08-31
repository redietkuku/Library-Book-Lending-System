class AuthorsController < ApplicationController
    def index
        @authors = Author.all
        render json: @authors
    end

    def show
        @auhtor = Author.find(params[:id])
        render json: @authors
    end

    def create
        @author = Author.new(model_params)
        if @author.save
            render json: @author
        else
            render json: @author.errors
        end
    end

    def update
        @author = Author.find(params[:id])
        if @author.save
            render json: @author
        else
            render json: @author.errors
        end
    end

    def destroy
        @author = Auhtor.find(params[:id])
        @author.destroy
        render json: {message: "Author deleted succesfully"}

    end

    private

    def model_params
        params.require(:payload).permit(:name, :bio, :no_of_books, :contact)
    end

end