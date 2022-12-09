class RemoveTeammateIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :teammate_id, :integer
  end
end
