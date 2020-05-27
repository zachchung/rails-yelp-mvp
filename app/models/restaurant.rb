class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "brunch", "korean", "american"]
  has_many :reviews, dependent: :destroy
  # destroy restaurant's reviews when destroying the restaurant (same as line45/46 @ controller)

  validates :name, :category, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
