class AddColumnToInvestmentHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :investment_histories, :monthly_profit_loss, :integer
    add_column :investment_histories, :temporary_total_value, :integer
  end
end
