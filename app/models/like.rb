class Like < ApplicationRecord
  belongs_to :user
  belongs_to :meal_post
end
