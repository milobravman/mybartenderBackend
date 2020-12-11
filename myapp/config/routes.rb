Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tables
  resources :groups
  resources :drinks
  resources :drink_groups
  resources :food_groups
  resources :foods


  patch "/food_groups/:id/c", to: "food_groups#change_status", as: "change_status" 

end
