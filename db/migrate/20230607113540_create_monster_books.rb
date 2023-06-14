class CreateMonsterBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :monster_books do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.string :reading_status
      t.datetime :read_date
      t.text :notes

      t.timestamps
    end
  end
end
