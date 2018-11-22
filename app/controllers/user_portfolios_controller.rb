class UserPortfoliosController < ApplicationController
  before_action :set_user_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @user_portfolio = UserPortfolio.all
    respond_to do |format|
      format.html
      format.csv do
        send_data render_to_string, filename: "user_portfolio.csv", type: :csv
      end
    end
  end

  def new
    #ログイン機能実装後は、new(user_id: 1)をsessionを利用してログインユーザのidを使用する。
    @user_portfolio = UserPortfolio.new(user_id: 1)
  end

  def create

    @user_portfolio = UserPortfolio.new(user_portfolio_params)
    if @user_portfolio.save
    end
    redirect_to :action => "index"
  end

  def edit
  end

  def show
  end

  def update
    @user_portfolio.update(total_value: params[:user_portfolio][:total_value].to_i, reserve_value: params[:user_portfolio][:reserve_value].to_i)
    redirect_to("/user_portfolios")
  end

  def destroy
    @user_portfolio.destroy
    redirect_to("/user_portfolios")
  end

  private

  def user_portfolio_params
    params.require(:user_portfolio).permit(:investment_id, :total_value, :reserve_value)
  end

  def set_user_portfolio
    @user_portfolio = UserPortfolio.find_by(id: params[:id])
  end
end
