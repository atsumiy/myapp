class UserPortfolio < ApplicationRecord
    belongs_to :investment
    has_one :investment_history
  end
  