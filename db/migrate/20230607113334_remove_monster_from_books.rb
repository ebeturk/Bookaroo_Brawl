class RemoveMonsterFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :books, :monster, null: false, foreign_key: true
  end
end
