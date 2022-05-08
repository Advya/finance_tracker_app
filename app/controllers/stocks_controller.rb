class StocksController < ApplicationController

  def search
    if params[:stock].blank?
      flash[:danger] = "Please enter something"
    else
      @stock = Stock.new_lookup(params[:stock])
      flash[:danger] = "Incorrect symbol" unless @stock
    end
    
    render 'users/my_portfolio'
  end
end
