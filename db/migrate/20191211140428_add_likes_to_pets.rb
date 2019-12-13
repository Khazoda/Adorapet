class AddLikesToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :likes, :integer
  end
end
