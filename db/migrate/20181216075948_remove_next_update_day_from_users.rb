class RemoveNextUpdateDayFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :next_update_day, :date
  end
end
