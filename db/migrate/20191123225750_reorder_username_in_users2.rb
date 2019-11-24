class ReorderUsernameInUsers2 < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :username, :string, after: :id
  end
end
