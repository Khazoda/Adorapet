class AddLikesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :likes, :integer
  end
end
