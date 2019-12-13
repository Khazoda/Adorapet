class UserAndPetDefaultLikes < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :likes, :integer, :default => 0
    change_column :pets, :likes, :integer, :default => 0
  end
end
