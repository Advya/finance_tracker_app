class StocksController < ApplicationController

  def search
    if params[:stock].blank?
      flash[:danger] = "Please enter something"
    else
      @stock = Stock.new_lookup(params[:stock])
      flash[:danger] = "Incorrect symbol" unless @stock
    end
    
    render 'users/my_portfolio'
    
    # redirect_to my_portfolio_path


    # if params[:stock].present?
    #   @stock = Stock.new_lookup(params[:stock])
    #   if @stock
    #     respond_to do |format|
    #       format.js { render partial: 'users/result.js' }
    #     end
    #   else
    #     flash[:alert] = 'Please enter a valid symbol'
    #     redirect_to my_portfolio_path
    #   end      
    # else
    #   flash[:alert] = 'Please enter right symbol'
    #   redirect_to my_portfolio_path
    # end
  end
end
