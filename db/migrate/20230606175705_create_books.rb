class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :genre
      t.integer :rating
      t.integer :suitable_for

      t.timestamps
    end
  end
end
