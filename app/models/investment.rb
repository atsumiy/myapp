class Investment < ApplicationRecord
  has_many :user_portfolios
  
  scope :search_by_investment_history_param, ->(user_portfolio_id) do
   joins(user_portfolio: :investment_history).where(UserPortfolio.arel_table[:id].eq(user_portfolio_id))
  
  end
end
  