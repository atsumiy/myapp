class InvestmentHistory < ApplicationRecord
    belongs_to :user_portfolio
  
    scope :search, ->(investment_id, update_year, update_month) do
      search_by_investment_id(investment_id)
        .search_by_update_year(update_year)
        .search_by_update_month(update_month)
    end
  
    scope :search_by_investment_id, ->(investment_id) do
      return if investment_id.blank?
      joins(user_portfolio: :investment).where(Investment.arel_table[:id].eq(investment_id.to_i))
    end
  
    scope :search_by_update_year, ->(update_year) do
      return if update_year.blank?
      where(InvestmentHistory.arel_table[:update_year].eq(update_year.to_i))
    end
  
    scope :search_by_update_month, ->(update_month) do
      return if update_month.blank?
      where(InvestmentHistory.arel_table[:update_month].eq(update_month.to_i))
    end
  end
  