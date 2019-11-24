class RemoveResetPassTokenFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :reset_password_token, :varchar
  end
end
