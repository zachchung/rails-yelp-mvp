# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1
rest = Restaurant.new(
  name: "Blue Jam",
  address: "Melrose Ave",
  phone_number: "(323)951-9191",
  category: "brunch"
)
rest.save!

review = Review.new(
  content: "long line",
  rating: 3
)
review.restaurant = rest
review.save!

# 2
rest = Restaurant.new(
  name: "Sushi Gen",
  address: "Little Tokyo",
  phone_number: "(213) 617-0552",
  category: "japanese"
)
rest.save!

review = Review.new(
  content: "fresh sushi",
  rating: 5
)
review.restaurant = rest
review.save!

# 3
rest = Restaurant.new(
  name: "Beverly Soon Tofu",
  address: "Olympic blvd",
  phone_number: "(213) 380-1113",
  category: "korean"
)
rest.save!

review = Review.new(
  content: "superb",
  rating: 5
)
review.restaurant = rest
review.save!

# 4
rest = Restaurant.new(
  name: "Cheesecake factory",
  address: "the Grove",
  phone_number: "32112323",
  category: "american"
)
rest.save!

review = Review.new(
  content: "good location...",
  rating: 3
)
review.restaurant = rest
review.save!

# 5
rest = Restaurant.new(
  name: "Pizzeria Mozza",
  address: "Highland Ave",
  phone_number: "43243425",
  category: "italian"
)
rest.save!

review = Review.new(
  content: "Best pizza in LA!",
  rating: 5
)
review.restaurant = rest
review.save!
