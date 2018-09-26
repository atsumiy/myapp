class UserPortfolioController < ApplicationController
  def index
    @user_portfolio = UserPortfolio.all

  end
end
