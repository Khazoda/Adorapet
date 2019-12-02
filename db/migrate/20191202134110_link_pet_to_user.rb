class LinkPetToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :user, index: true
  end
end
