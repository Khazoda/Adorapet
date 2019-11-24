class ReorderUsernameInUsers < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :username, :varchar, after: :id
  end
end
