class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  has_many :recipe_foods, dependent: :destroy
end
