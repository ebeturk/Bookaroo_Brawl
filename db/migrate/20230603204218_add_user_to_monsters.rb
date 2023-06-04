class AddUserToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_reference :monsters, :user, null: false, foreign_key: true
  end
end
