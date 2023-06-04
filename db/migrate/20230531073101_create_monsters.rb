class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.text :description
      t.integer :category

      t.timestamps
    end
  end
end
