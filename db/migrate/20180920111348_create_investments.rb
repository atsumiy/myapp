class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.integer :investment_service_id
      t.string :name

      t.timestamps
    end
  end
end
