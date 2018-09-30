class UserPortfoliosController < ApplicationController
  def index
    @user_portfolio = UserPortfolio.all
  end
end
