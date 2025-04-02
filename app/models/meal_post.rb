class MealPost < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  # Active Storage
  has_one_attached :image

  enum meal_type: { breakfast: 0, lunch: 1, dinner: 2 }
  enum source_type: { homemade: 0, eating_out: 1 }

  validates :title, presence: true
  validates :content, presence: true
end
