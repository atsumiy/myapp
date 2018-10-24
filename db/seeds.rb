# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class AddInitialInvestment_histories < ActiveRecord::Migration[5.0]
  def up
    binding.pry
    InvestmentService.create(name: "SBI証券",service_url: "https://site2.sbisec.co.jp/ETGate/?_ControlID=WPLETpfR001Control&_PageID=DefaultPID&_DataStoreID=DSWPLETpfR001Control&_ActionID=DefaultAID&getFlg=on&_scpr=int_pr1%3d170101_cmn_ctop_tlink_01")

    #Investment.create(investment_service_id: i, name:) 
    
  end
 
  def down
    InvestmentService.delete_all
  end
end
