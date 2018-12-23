class AddNextUpdateDayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :next_update_day, :int
  end
end
