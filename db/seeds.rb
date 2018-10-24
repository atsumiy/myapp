# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class AddInitialInvestment_histories < ActiveRecord::Migration[5.0]
  def up
    5.times do |i|
     InvestmentHistory.create(user_portfolio_id: i, investment_monthly_value: i*10, update_year: i,update_month: i + 1 , monthly_profit_loss: i * 5, temporary_total_value: i + i * 10)
    end
  end
 
  def down
    Investment_histories..delete_all
  end
end
