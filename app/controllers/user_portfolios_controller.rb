class UserPortfoliosController < ApplicationController
  def index
    @user_portfolio = UserPortfolio.all
  end
 
  def new
   @user_portfolio = UserPortfolio.new(user_id: 1 )
  end
  
  def create
    user_portfolio = UserPortfolio.new(params[:user_portfolio])
    user_portfolio.save
    redirect_to("/user_portfolios")
  end

  def edit
    @user_portfolio = UserPortfolio.find_by(id: params[:id])
  end

  def show
  end 

  def destroy
  end

  private

  def user_portfolio_params
    params.require(:user_portfolio).permit(:user_id,:investment_id, :total_value, :reserve_value)
  end
  
end
