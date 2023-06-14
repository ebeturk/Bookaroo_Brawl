class Monster < ApplicationRecord
  belongs_to :user
  has_many :monster_books
  has_many :books, through: :monster_books

  has_many_attached :images
  validates :user_id, uniqueness: true


  enum category: { toddler: 0, pre_school: 1, school_age: 2, pre_teen: 3 }

  validates :name, :description, presence: true
  validates :category, inclusion: { in: categories.keys }

  def birthday_today?
    created_at.to_date == Date.today
  end
end
