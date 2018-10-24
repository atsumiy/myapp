class CreateInvestmentServices < ActiveRecord::Migration[5.2]
  def change
    create_table :investment_services do |t|
      t.string :name
      t.string :service_url

      t.timestamps
    end
  end
end
