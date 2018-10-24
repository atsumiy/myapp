class AddColumnToInvestmentHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :investment_histories, :monthly_profit_loss, :integer ,after: :update_month
  end
end
