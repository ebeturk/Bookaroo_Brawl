class MonsterBook < ApplicationRecord
  belongs_to :monster
  belongs_to :book

  validates :book_id, uniqueness: { scope: :monster_id, message: "This book is already in your monster's library" }
end
