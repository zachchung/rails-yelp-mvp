Rails.application.routes.draw do
  root to: "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:new, :create] # generate below 2 lines
    # new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
    # restaurant_reviews     POST  /restaurants/:restaurant_id/reviews      reviews#create
  end
  resources :reviews, only: :destroy # generate the line below
  #  review                  DELETE /reviews/:id                            reviews#destroy
  # only need review id (no need know restaurant id), nesting is unnecessary
end
