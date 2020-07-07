class Restaurant < ApplicationRecord
  # destroy restaurant's reviews when destroying the restaurant (same as line45/46 @ controller)
  has_many :reviews, dependent: :destroy
  #               :dependent => :destroy   (old syntax, helpful to understand symbols : :)

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "brunch", "korean", "american", "cafe", "asian"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :category, :address, :phone_number, presence: true
end
