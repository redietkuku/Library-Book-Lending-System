class BooksController < ApplicationController
    def index
        @books = Book.all
        render json: @books
    end

    def show
        @book = Book.find(params[:id])
        render json: @books
    end

    def create
        @book = Book.new(model_params)
        if @book.save
            render json: @book
        else
            render json: @book.errors
        end
    end

    def update
        @book = Book.find(params[:id])
        if @book.save
            render json: @book
        else
            render json: @book.errors
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: {message: "Book deleted succesfully"}
    
    end

    private

    def model_params
        params.require(:payload).permit(:code, :name, :description, :edition, :published_date, :status)
    end
end
