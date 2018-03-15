class AddUserToWob < ActiveRecord::Migration[5.1]
  def change
    add_reference :wobs, :user, foreign_key: true
  end
end
