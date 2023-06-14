class Book < ApplicationRecord
  enum genre: {
    picture: 0,
    early_reader: 1,
    nonfiction: 2,
    biography: 3,
    fantasy: 4,
    sci_fi: 5,
    mystery: 6,
    humor: 7,
    graphic_novel: 8,
    historical: 9,
    fairy_tale: 10,
    mythology: 11,
    comic: 12,
    poetry: 13
  }

  enum suitable_for: { toddler: 0, pre_school: 1, school_age: 2, pre_teen: 3 }
  validates :title, :author, presence: true
  validates :title, uniqueness: { scope: :author }

  has_one_attached :image
  has_many :monster_books
  has_many :monsters, through: :monster_books
  
end
