Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #full CRUD routes for all of these modles several of these routes are not used and are secrutiy vunerabilties at some point I should add the approprate [:only] modifires

  resources :tables
  resources :groups
  resources :drinks
  resources :drink_groups
  resources :food_groups
  resources :foods

 # Unique routes to PATCH FoodGroup and DrinkGroup modles 

  patch "/food_groups/:id/c", to: "food_groups#change_status", as: "change_status"
  patch "/drink_groups/:id/c", to: "drink_groups#change_drink_status", as: "change_drink_status"
  patch "/group/:id/c", to: "groups#change" as: "change_drink_status" 

end
