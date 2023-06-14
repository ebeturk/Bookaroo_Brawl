class AddColumnToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :monster, null: false, foreign_key: true
  end
end
