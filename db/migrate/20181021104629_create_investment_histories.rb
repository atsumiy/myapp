class CreateInvestmentHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :investment_histories do |t|
      t.integer :user_portfolio_id
      t.integer :investment_monthly_value
      t.integer :update_year
      t.integer :update_month
      t.timestamps
    end
  end
end
