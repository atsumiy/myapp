class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.date :next_update_day

      t.timestamps
    end
  end
end
