Rails.application.routes.draw do
  root to: "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
    #                Prefix  Verb  URI Pattern                              Controller#Action
    # new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
    # restaurant_reviews     POST  /restaurants/:restaurant_id/reviews      reviews#create
  end
  resources :reviews, only: [:destroy]
  #  review                  DELETE /reviews/:id                            reviews#destroy
  # only need review id (no need know restaurant id), nesting is unnecessary
end
