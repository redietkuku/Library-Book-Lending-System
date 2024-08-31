class LendingHistoriesController < ApplicationController
    def index
        @lending_histories = LendingHistory.all
        render json: @lending_histories
    end

    def show
        @lending_history = LendingHistory.find(params[:id])
        render json: @lending_histories
    end

    def create
        @lending_history = LendingHistory.new(model_params)
        if @lending_history.save
            render json: @lending_history
        else
            render json: @lending_history.errors
        end
    end

    def update
        @lending_history = LendingHistory.find(params[:id])
        if @lending_history.save
            render json: @lending_history
        else
            render json: @lending_history.errors
        end
    end

    def destroy
        @lending_history = LendingHistory.find(params[:id])
        @lending_history.destroy
        render json: {message: "Lending_history deleted succesfully"}
    end

    private

    def model_params
        params.require(:payload).permit(:student, :book, :date_lent, :date_returned, :status)
    end
end

