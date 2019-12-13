class AddTopPetToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :pet, foreign_key: false
  end
end
