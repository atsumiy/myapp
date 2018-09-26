class CreateUserPortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :user_portfolios do |t|
      t.integer :user_id
      t.integer :investment_id
      t.integer :total_value
      t.integer :reserve_value

      t.timestamps
    end
  end
end
