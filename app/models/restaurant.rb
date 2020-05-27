class Restaurant < ApplicationRecord
  # destroy restaurant's reviews when destroying the restaurant (same as line45/46 @ controller)
  has_many :reviews, dependent: :destroy
  #               :dependent => :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian", "brunch", "korean", "american"]
  validates :name, :category, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
