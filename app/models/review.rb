class Review < ApplicationRecord
  belongs_to :restaurant

  # RATINGS = %w(0 1 2 3 4 5)
  # validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }
  # validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }

  validates :content, :rating, presence: true
end
