class InvestmentHistory < ApplicationRecord
    belongs_to :user_portfolio
  
    scope :search_by_investment_name, ->(investment_name) do
      return if investment_name.blank?
      joins(user_portfolio: :investment).where(Investment.arel_table[:name].eq(investment_name))
    end

    scope :search_by_update_year, ->(update_year) do
        return if update_year.blank?
        where(InvestmentHistory.arel_table[:update_year].eq(update_year))
    end

    scope :search_by_update_month, ->(update_month) do
        return if update_month.blank?
        where(InvestmentHistory.arel_table[:update_month].eq(update_month))
    end
end
